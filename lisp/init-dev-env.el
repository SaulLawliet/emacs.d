;; 代码补全
(require-package 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.25)

;; 代码检查
(require-package 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)


(provide 'init-dev-env)
