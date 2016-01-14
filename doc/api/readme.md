web_browser - detect and launch browsers
========================================

SYNOPSIS
--------

```
const web = require('web_browser');
```

METHODS
-------

[`web_browser.detect`](detect.md)
:   Detect web browsers available on the user's machine.

[`web_browser.open`](open.md)
:   Open a new web browser tab or window.

[`web_browser.version`](version.md)
:   Get version information about a browser executable.

DESCRIPTION
-----------

The `web_browser` module provides a high level interface to allow displaying
web-based documents to users.

Under most circumstances, just calling the `open` function from this module
will do the right thing and auto-detect the user's preferred browser.

In the case you want to override the browser to launch, browsers available on
the user's machine can be detected with the `detect` function which will give
you an array of all the browser executables available on the user's machine,
`version` can then be called to discover further information about a browser's executable.

EXAMPLE
-------

```include
example/web_browser.js
```
