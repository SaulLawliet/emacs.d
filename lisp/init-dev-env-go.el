(require-package 'go-mode) ;; need instill godef(https://github.com/rogpeppe/godef)
(require-package 'go-autocomplete) ;; need install gocode(https://github.com/nsf/gocode)

(after-load 'auto-complete
  (require 'go-autocomplete))

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
			  (setq tab-width 2)
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
			  (local-set-key (kbd "C-c i") 'go-goto-imports)))


(provide 'init-dev-env-go)