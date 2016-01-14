const web = require('web_browser');

web.open(process.argv[2], {}, (error, browser) => {
  if (error) {
    return console.error(`detect: ${error.message}`);
  }
});
