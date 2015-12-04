;;; package --- V
;;; Commentary:
;;; Code:

(setq make-backup-files nil) ;; 关闭备份文件功能
(setq inhibit-startup-screen t) ;; 关闭欢迎页面
(setq tool-bar-mode nil) ;; 关闭工具条

(global-set-key (kbd "<f8>") 'speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)

;;(setq js-indent-level 2) ;; js缩进为2空格


(provide 'init-L)
;;; init-L.el ends here