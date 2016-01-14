node-web_browser - detect and launch browsers
=============================================

The `web_browser` module provides functions for opening web content in the
user's preferred browser, detect browsers available on the user's machine and
obtaining detailed information about those browsers.

INSTALL
-------

The `web_browser` module is available via [npm](http://npmjs.com), the
following command will install the latest stable version of the module in your
project directory:

```sh
npm install web_browser
```

EXAMPLE
-------

The following example program will the url open a new window pointing to
http://github.com in the user’s preferred browser which is inferred from the
`BROWSER` environment variable:

```js
const web = require('web_browser');

web.open('http://github.com', { tab: false }, (error, ps) => {
  if (error) {
    return console.error(`${process.name}: ${error.message}`);
  }

  console.log(`http://github.com was opened with ${ps.spawnfile}`);
});
```

[View more examples](example/)

DOCUMENTATION
-------------

[View the documentation](doc/)

LICENSE
-------

The project is licensed under MIT.

[View the license](license.md)
