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

(require 'init-company) ;; 代码自动补全
(require 'init-evil) ;; 将快捷键改成vim
(require 'init-smex) ;; 方便M-x后输入命令
(require 'init-markdown) ;; 支持md语法

(require 'init-dev-env-c) ;; C开发环境


;; 终端下不加载主题
(when (not (eq window-system 'nil))
  (require 'init-theme))

;;-------------------------------------------------- 
;; 最后加载用户自定义配置
;;-------------------------------------------------- 
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)
