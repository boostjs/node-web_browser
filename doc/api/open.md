# web_browser.open - open a web browser.

## SYNOPSIS

```
web_browser.open(url, [, options], [callback])
```

## PARAMETERS

`url`
:   Specifies the url to use.

`options`
:   Specifies an object with key-value pairs containing optional parameters.

    `browser`
    :   Specifies array of strings containing browser commands
        which will be considered for opening the specified `url`.

        The command string may contain a substitution token to indicate where
        the url should be placed in the command, if no substitution token is
        present in the string the url will be concatenated with the command
        string.

        The default value is an array split by `path.delimiter` from
        `process.env['BROWSER']`.

    `debug`
    :   Specifies the port number which the browser's debugging server should
        be listening for remote connections.

    `debug-brk`
    :   Specifies wether or not the debugger should break when loading
        the specified `url`.

`callback`
:   Specifies the function which is called once the `url` has been
    opened in a browser with the following parameters:

    `error`
    :   Specifies the error object when an error occurs, otherwise null

    `browser`
    :   Specifies the browser process when no error occurs, otherwise null.

## DESCRIPTION

`web_browser.open` will open the given `url` in the first browser available on the user's machine of the ones listed in `options.browser`, calling the specified `callback` function once the `url` has been opened in the browser.

If no browser can be found, an error will be raised instead

## EXAMPLE

The following program opens http://github.com with the users preferred browser:

```js
```

The following program opens http://github.com in Google Chrome:

```js
```
