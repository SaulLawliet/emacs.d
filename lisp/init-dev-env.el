;; 代码补全
(require-package 'auto-complete)
(ac-config-default)

;; 代码检查
(require-package 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; 代码片段
;;(require-package 'yasnippet)
;;(yas-global-mode 1)

;; 符号对 
(require-package 'smartparens)
(smartparens-global-strict-mode 1)

(provide 'init-dev-env)
