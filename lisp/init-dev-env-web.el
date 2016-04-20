;;; package --- V
;;; Commentary:
;;; Code:

(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  )
(add-hook 'web-mode-hook  'my-web-mode-hook)


(provide 'init-dev-env-web)
;;; init-dev-env-web.el ends here
