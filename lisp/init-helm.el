;;; package --- V
;;; Commentary:
;;; Code:

(require-package 'helm)
(helm-mode 1)
(helm-autoresize-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


(provide 'init-helm)
;;; init-helm.el ends here
