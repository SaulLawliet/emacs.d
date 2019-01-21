;;; package --- V
;;; Commentary:
;;; Code:

(setq make-backup-files nil) ;; 关闭备份文件功能
(setq inhibit-startup-screen t) ;; 关闭欢迎页面
(tool-bar-mode -1) ;; 关闭工具条
;; (global-linum-mode 1) ;; 显示行号

(global-set-key (kbd "<f8>") 'speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq-default indent-tabs-mode nil)

(provide 'init-L)
;;; init-L.el ends here
