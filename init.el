;;; packge --- V
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-utils)
(require 'init-function) ;; 一些功能
(require 'init-L) ;; 我的自定义

(require 'init-dev-env) ;; 代码通用部分
(require 'init-dev-env-c)
(require 'init-dev-env-go)
(require 'init-dev-env-ruby)
(require 'init-dev-env-web)

;; 终端下不加载主题
(when (not (eq window-system 'nil))
  (require 'init-theme))

;; 最后加载用户自定义配置
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)
;;; init.el ends here
