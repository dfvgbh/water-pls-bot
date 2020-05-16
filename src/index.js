import { bot } from './bot/setup.js';
import { deliveryIntervalsKeyboard } from './bot/keyboard-builder.js';
import { getPaymentParams } from './order-page.js';
import { requestPayment } from './payment.js';

const { TELEGRAM_USER_IDS } = process.env;

const processOrder = async orderParams => {
  try {
    const paymentParams = await getPaymentParams(orderParams);
    console.log('Payment Params:', paymentParams);

    const payData = JSON.parse(paymentParams.body).data_for_pay;
    const payment = await requestPayment(payData);

    return payment.headers.location;
  } catch (err) {
    console.error(err);
    return 'Error while processing order';
  }
};

// refactor if need more to identify callback queries
const DELIVERY_INTERVAL_QUERY_TEXT = 'Времечко не подскажите?';

bot.onText(/^\/order$/, async msg => {
  const { chat: { id: chatId }, from: { id: userId } } = msg;
  if (!TELEGRAM_USER_IDS.includes(userId)) {
    await bot.sendMessage(chatId, 'Access denied 🖕🏿');
    return;
  }

  await bot.sendMessage(chatId, DELIVERY_INTERVAL_QUERY_TEXT,  {
    reply_markup: {
      inline_keyboard: deliveryIntervalsKeyboard(),
    },
  });
});

bot.on('callback_query', async query => {
  const { message, data } = query;
  const { from: { id: userId } } = query;
  const { chat: { id: chatId } } = message;

  if (!TELEGRAM_USER_IDS.includes(userId)) {
    await bot.answerCallbackQuery(query.id, 'Access denied 🖕🏿');
    return;
  }

  if (message.text === DELIVERY_INTERVAL_QUERY_TEXT) {
    const paymentUrl = await processOrder({
      'checkout[delivery][time]': data,
    });

    await bot.sendMessage(chatId, paymentUrl);
  }

  await bot.answerCallbackQuery(query.id, 'Success 🐳');
});
