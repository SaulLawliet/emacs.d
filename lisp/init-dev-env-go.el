(require-package 'go-mode) ;; need instill godef(https://github.com/rogpeppe/godef)
(require-package 'company-go) ;; need install gocode(https://github.com/nsf/gocode)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
			  (setq tab-width 4)
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
			  (local-set-key (kbd "C-c i") 'go-goto-imports)
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))


(provide 'init-dev-env-go)
