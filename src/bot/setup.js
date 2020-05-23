import TelegramBot from 'node-telegram-bot-api';

const { TELEGRAM_TOKEN, NODE_ENV } = process.env;
const isProd = NODE_ENV === 'production';

const setupWebHookBot = () => {
  const { HEROKU_APP_NAME, PORT } = process.env;
  const url = `https://${HEROKU_APP_NAME}.herokuapp.com:443`;
  const bot = new TelegramBot(TELEGRAM_TOKEN, {
    webHook: {
      port: PORT
    }
  });

  bot.setWebHook(`${url}/${TELEGRAM_TOKEN}`);

  return bot;
};

const setupPoolingBot = () => {
  const bot = new TelegramBot(TELEGRAM_TOKEN, { polling: true });

  bot.on('polling_error', msg => console.error('Error in pooling: ', msg));

  return bot;
};

export const bot = isProd ? setupWebHookBot() : setupPoolingBot();


