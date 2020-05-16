import TelegramBot from 'node-telegram-bot-api';
import { getPaymentParams } from './order-page.js';
import { requestPayment } from './payment.js';

const bot = new TelegramBot(process.env.TOKEN, { polling: true });

const deliveryIntervals = {
  '9-12': '09 : 00 – 12 : 00',
  '12-15': '12 : 00 – 15 : 00',
  '15-18': '15 : 00 – 18 : 00',
  '18-21': '18 : 00 – 21 : 00',
};

bot.on('polling_error', msg => console.error('Pooling: ', msg));

bot.onText(/^\/order$/, async (msg) => {
  const { chat: { id: chatId }, from: { id: userId } } = msg;
  if (!process.env.USER_IDS.includes(userId)) {
    await bot.sendMessage(chatId, 'Access denied 🖕🏿');
    return;
  }

  const paymentUrl = await processOrder();

  await bot.sendMessage(chatId, paymentUrl);
});


const processOrder = async () => {
  try {
    const paymentParams = await getPaymentParams({
      'checkout[delivery][time]': deliveryIntervals['12-15'],
    });
    console.log('Payment Params:', paymentParams);

    const payData = JSON.parse(paymentParams.body).data_for_pay;
    const payment = await requestPayment(payData);

    return payment.headers.location;
  } catch (err) {
    console.error(err);
    return 'Error while processing order';
  }
}
