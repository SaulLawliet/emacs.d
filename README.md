This configuration is a reference to [purcell/emacs.d](https://github.com/purcell/emacs.d).  
For me, purcell's configuration is very complex, so I made a new.  
If you are a beginner like me. It's very easy to read and learn. So you can quickly to make one belong yours.

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
You should use keywords of `init-local` to search this repository. Then you'll find something needs you config, if you want it worked good.
