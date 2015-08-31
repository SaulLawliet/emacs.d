This configuration is a reference to [purcell/emacs.d](https://github.com/purcell/emacs.d).  
For me, purcell's configuration is very complex, so I copied a new.  
This is very simple.

## Requirements
Emacs 24 or greater.

## Installation
Backup your `~/.emacs.d`. Then run
```
git clone https://github.com/SaulLawliet/emacs.d.git ~/.emacs.d
```

## Adding your own customization
Create a file `~/.emacs.d/lisp/init-local.el` which looks like this:
```
... your code here ...

(provide 'init-local)
```
