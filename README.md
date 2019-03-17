# haskell-echo

## Purpose
I've decided to (re-)attempt to learn Haskell, so the first thing I'm trying to do is write a
simple `echo` command.  It'll print out the command line arguments passed with a newline character,
unless the `-n` option is specified.

## Building & Installing
```
$ stack build
$ stack install
```

## Examples
You can run this either after `stack install` simply prepend with `stack run`.

```
$ haskell-echo foo
foo
$ haskell-echo foo bar
foo bar
$ haskell-echo -n foo
foo$
```
