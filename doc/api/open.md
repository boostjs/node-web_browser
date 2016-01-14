web_browser.open - open a web browser
=====================================

SYNOPSIS
--------

```
web_browser.open(url, [, options], callback)
```

PARAMETERS
----------

`url`
:   Specifies the url which is to be opened in the web browser.

`options`
:   Specifies an object with key-value pairs containing optional parameters.

    `browser`
    :   Specifies array of strings containing browser commands
        which will be considered for opening the specified `url`.

        A command string may contain a string substitution token to indicate
        where the url should be placed in the command.

        The default value is an array split by `path.delimiter` from
        `process.env['BROWSER']`.

    `debug`
    :   Specifies the port number which the web browser's remote debugging
        server should be listening for connections.

    `private`
    :   Specifies wether or not the `url` should be opened in private
        mode.

    `tab`
    :   Specifies whether or not the `url` should be opened in a tab,
        or in a new window.

    `profile`
    :   Specifies a path to the user profile that should be used.

`callback`
:   Specifies a function which is called once the browser process has spawned
    with the following arguments:

    `error`
    :   Specifies an error object containing error information if an error
        occurs, if no error occurs this parameter will be null.

    `browser`
    :   Specifies an object containing the browser process,
        if an error occurs this parameter will be null.

DESCRIPTION
-----------

`web_browser.open` opens the specified `url` in the first browser that is
available on the user's machine of the browser commands specified in
`options.browser`.

The `callback` function will be called with a child process object as the second
parameter once after the browser process has been spawned, if an error occurs,
the `callback` function is called once with the error object as its first
parameter instead.

EXAMPLE
-------

```include
example/open.js
```
