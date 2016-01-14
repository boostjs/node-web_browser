const web = require('..');

web.open(process.argv[1], { tab: true }, (error, ps) => {
  if (error) {
    return console.error(`${process.name}: ${error.message}`);
  }

  console.log('');
});
