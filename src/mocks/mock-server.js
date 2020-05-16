import { readFile } from 'fs';
import { promisify } from 'util';
import path from 'path';
import * as https from 'https';
import express from 'express';
import crypto from 'crypto-js';
import { randomHash } from '../helpers.js';
import { logFormData } from './log-form-data.js';

const app = express();
const APP_PATH = process.cwd();
const PORT = 443;

app.post('/ru/order-water/', logFormData, (req, res) => {
  const orderReference = randomHash();
  const merchantAccount = 'test_merch_n1';
  const merchantDomainName = 'https://test_merch_n1.com.ua/';
  const orderDate = '1589202200';
  const merchantSecretKey = 'flk3409refn54t54t*FNJRET';
  const merchantSignature = crypto.HmacMD5(
    `${merchantAccount};${merchantDomainName};${orderReference};${orderDate};150.00;UAH;Ukrainian Skandinavia;2;75`,
    merchantSecretKey
  );
  const body = {
    data_for_pay: {
      merchantSignature: merchantSignature.toString(),
      orderReference,
      merchantAccount,
      merchantDomainName,
      orderDate,
      merchantTransactionType: 'AUTO',
      merchantTransactionSecureType: 'AUTO',
      amount: '150.00',
      currency: 'UAH',
      productName: ['Ukrainian Skandinavia'],
      productCount: [2],
      productPrice: [75],
      serviceUrl: 'https://1c.com.ua',
      paymentSystems: 'card;privat24;googlePay;applePay;masterPass'
    },
  };

  res.send(body);
});

startServer(app).then(() => console.log(`Mock server listening on port: ${PORT}`));

async function startServer(app) {
  const [privateKey, certificate] = await Promise.all([
    promisify(readFile)(path.join(APP_PATH, 'src/mocks/cert/selfsigned.key'), 'utf8'),
    promisify(readFile)(path.join(APP_PATH, 'src/mocks/cert/selfsigned.pem'), 'utf8'),
  ]);
  const credentials = { key: privateKey, cert: certificate };

  const httpsServer = https.createServer(credentials, app);
  httpsServer.listen(PORT);
}
