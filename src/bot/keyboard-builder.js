const deliveryIntervals = [
  '09 : 00 – 12 : 00',
  '12 : 00 – 15 : 00',
  '15 : 00 – 18 : 00',
  '18 : 00 – 21 : 00',
];

export const deliveryIntervalsKeyboard = () => deliveryIntervals.map(interval => [{
  text: interval,
  callback_data: interval,
}]);
