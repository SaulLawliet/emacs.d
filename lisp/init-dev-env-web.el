;;; package --- V
;;; Commentary:
;;; Code:

(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; haml
(require-package 'haml-mode)

;; coffee
(require-package 'coffee-mode)
;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 2))



(provide 'init-dev-env-web)
;;; init-dev-env-web.el ends here
