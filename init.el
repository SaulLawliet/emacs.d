;;-------------------------------------------------- 
;; 自定义 
;;-------------------------------------------------- 
(setq make-backup-files nil) ;; 关闭备份文件功能
(setq inhibit-startup-screen t) ;; 关闭欢迎页面

;;-------------------------------------------------- 
;; 插件配置脚本
;;-------------------------------------------------- 
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-utils)
(require 'init-elpa)
(require 'init-exec-path)

(require 'init-evil) ;; 将快捷键改成 vim
(require 'init-smex) ;; 方便 M-x 后输入命令
(require 'init-markdown)
(require 'init-sr-speedbar)

(require 'init-dev-env) ;; 代码通用部分 
(require 'init-dev-env-c)
(require 'init-dev-env-go)
(require 'init-dev-env-ruby)

(require-package 'ido)
(ido-mode t)


;; 终端下不加载主题
(when (not (eq window-system 'nil))
  (require 'init-theme))

;;-------------------------------------------------- 
;; 最后加载用户自定义配置
;;-------------------------------------------------- 
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)
