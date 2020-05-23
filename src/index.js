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
    throw err;
  }
};

const isAuthorized = async (userId, chatId) => {
  if (!TELEGRAM_USER_IDS.includes(userId)) {
    await bot.sendMessage(chatId, 'Access denied 🖕🏿');
    return false;
  }

  return true;
};

// refactor if need more to identify callback queries
const DELIVERY_INTERVAL_QUERY_TEXT = 'Времечко не подскажите?';

bot.onText(/^\/order$/, async msg => {
  const { chat: { id: chatId }, from: { id: userId } } = msg;
  if (!await isAuthorized(userId, chatId)) return;

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

  if (!await isAuthorized(userId, chatId)) {
    await bot.answerCallbackQuery(query.id, 'Failure 🙈');
    return;
  }

  if (message.text === DELIVERY_INTERVAL_QUERY_TEXT) {
    try {
      const paymentUrl = await processOrder({
        'checkout[delivery][time]': data,
      });
      await bot.sendMessage(chatId, paymentUrl);
      await bot.answerCallbackQuery(query.id, 'Success 🐳');
    } catch {
      await bot.sendMessage(chatId, 'Error while processing order');
      await bot.answerCallbackQuery(query.id, 'Failure 🙈');
    }
  }
});
