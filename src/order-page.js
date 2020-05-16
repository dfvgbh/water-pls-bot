import * as https from 'https';
import { randomHash } from './helpers.js';

const HOST = process.env.HOST;

const requestOrderPage = () => {
  const options = {
    hostname: 'skandinavia.com.ua',
    path: '/ru/order-water/',
    method: 'GET',
  };

  return new Promise((resolve, reject) => {
    const req = https.request(options, (res) => {
      const chunks = [];

      res.on('data',  chunk => {
        chunks.push(chunk);
      });

      res.on('end', () => {
        resolve({
          headers: res.headers,
          body: Buffer.concat(chunks).toString()
        });
      })
    });

    req.on('error', reject)

    req.end();
  });
}

const requestPaymentParams = (orderParams, headers) => {
  const boundary = randomHash();
  const boundaryMiddle = '----WebKitFormBoundary' + boundary;
  const boundaryLast = '----WebKitFormBoundary' + boundary + '--';
  const options = {
    method: 'POST',
    hostname: HOST,
    path: '/ru/order-water/',
    headers: {
      'x-requested-with': 'XMLHttpRequest',
      'content-type': `multipart/form-data; boundary=${boundaryMiddle}`,
      ...headers,
    },
  };

  return new Promise((resolve, reject) => {
    const req = https.request(options, (res) => {
      const chunks = [];

      res.on('data',  chunk => {
        chunks.push(chunk);
      });

      res.on('end', () => {
        resolve({
          headers: res.headers,
          body: Buffer.concat(chunks).toString()
        });
      })
    });

    const body = `--${boundaryMiddle}\nContent-Disposition: form-data; name="ajax"\n\nGetTestOrderQuery\n` +
      `--${boundaryMiddle}\nContent-Disposition: form-data; name="post-date"\n\n${orderParams}\n--${boundaryLast}`

    req.write(body);

    req.on('error', reject);

    req.end();
  });
}

const retrieveToken = page => {
  const matches = page.match(/name="checkout\[token]" value="(?<token>.+)"/);
  return matches.groups.token;
}

const buildOrderParams = params => {
  const tomorrow = new Date(new Date().setDate(new Date().getDate() + 1));
  const deliveryDate = [
    tomorrow.getDate().toString().padStart(2, '0'),
    (tomorrow.getMonth() + 1).toString().padStart(2, '0'),
    tomorrow.getFullYear().toString(),
  ].join('-');
  const {
    DELIVERY_USER_NAME,
    DELIVERY_PHONE,
    DELIVERY_EMAIL,
    DELIVERY_CITY,
    DELIVERY_STREET,
    DELIVERY_HOUSE,
    DELIVERY_ENTRANCE,
    DELIVERY_APARTMENT,
    DELIVERY_MESSAGE
  } = process.env;

  const orderParams = new URLSearchParams({
    'checkout[price][cart]': '150.00',
    'checkout[price][discount]': '0',
    'checkout[price][delivery]': '0',
    'checkout[price][total]': '150.00',
    'checkout[user][perezvon1]': 'on',
    'checkout[user][fullname]': DELIVERY_USER_NAME,
    'checkout[user][phone]': DELIVERY_PHONE,
    'checkout[user][email]': DELIVERY_EMAIL,
    'checkout[delivery][date]': deliveryDate,
    'checkout[delivery][time]': '09 : 00 – 12 : 00',
    'checkout[delivery][city]': DELIVERY_CITY,
    'checkout[delivery][street]': DELIVERY_STREET,
    'checkout[delivery][house]': DELIVERY_HOUSE,
    'checkout[delivery][entrance]': DELIVERY_ENTRANCE,
    'checkout[delivery][apartment]': DELIVERY_APARTMENT,
    'checkout[message]': DELIVERY_MESSAGE,
    'checkout[type_order]': '1',
    'checkout[delivery][method]': '3',
    'checkout[agree]': 'on',
    ...params,
  });

  return orderParams.toString().replace(/\+/g, '%20');
}

export const getPaymentParams = async (orderParams) => {
  const orderPageResponse = await requestOrderPage();
  const cookies = orderPageResponse.headers['set-cookie'];
  const token = retrieveToken(orderPageResponse.body);
  const serializedOrderParams = buildOrderParams({
    'checkout[token]': token,
    ...orderParams,
  });

  return await requestPaymentParams(serializedOrderParams, {
    cookie: cookies[0]
  });
}

