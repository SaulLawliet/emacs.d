;;-------------------------------------------------- 
;; 自定义 
;;-------------------------------------------------- 
(setq make-backup-files nil) ;; 关闭备份文件功能
(setq inhibit-startup-screen t) ;; 关闭欢迎页面
(setq speedbar-show-unknown-files t) ;; 让speedbar显示所有文件

;;-------------------------------------------------- 
;; 插件配置脚本
;;-------------------------------------------------- 
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-utils)
(require 'init-elpa)

(require 'init-company)
(require 'init-evil)
(require 'init-smex)
(require 'init-theme)
(require 'init-markdown)

(require 'init-dev-env-c)



;;-------------------------------------------------- 
;; 最后加载用户自定义配置
;;-------------------------------------------------- 
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)
