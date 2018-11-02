# dired-smart-jump [![Build Status](https://travis-ci.org/EricCrosson/dired-smart-jump.svg?branch=master)](https://travis-ci.org/EricCrosson/dired-smart-jump)

> DWIM movement-commands for dired buffers in GNU Emacs

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
;; Ensure `dired` has been loaded
(use-package dired-smart-jump
  :quelpa (dired-smart-jump
           :fetcher github
           :repo "ericcrosson/dired-smart-jump"))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'dired-smart-jump)
```

## Use

This package remaps the `beginning-of-buffer` and `end-of-buffer`
keybindings in `dired-mode-map` to commands that place point at the
first file in the buffer and the last file in the buffer,
respectively.

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
