import * as https from 'https';

export const requestPayment = async params => {
  const options = {
    method: 'POST',
    hostname: 'secure.wayforpay.com',
    path: '/pay/compact?build=50',
    headers: {
      'content-type': `application/x-www-form-urlencoded`,
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

    const data = new URLSearchParams(params).toString();
    req.write(data);

    req.on('error', reject);

    req.end();
  });
}
