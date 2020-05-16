export const logFormData = (req, res, next) => {
  const chunks = [];

  req.on('data', chunk => {
    chunks.push(chunk);
  });

  req.on('end', () => {
    const body = Buffer.concat(chunks).toString();
    const { groups: { orderParams } } =
      body.match(/name=.post-date.\s+(?<orderParams>.*)\s+------WebKitFormBoundary/sm);

    console.log(decodeURIComponent(orderParams).split('&'));
  });

  next();
};
