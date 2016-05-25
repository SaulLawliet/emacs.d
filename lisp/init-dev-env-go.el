;;; package --- V
;;; Commentary:
;;; Code:

(exec-path-from-shell-copy-env "GOROOT")
(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "_GOPATH_")  ;; I used '_GOPATH_' to define first 'GOPATH'.

;; NEED -> go get github.com/rogpeppe/godef
(require-package 'go-mode)

;; NEED -> go get github.com/nsf/gocode
(require-package 'go-autocomplete)

;; NEED -> go get golang.org/x/tools/cmd/oracle
(let (oracle-file)
  (setq oracle-file (concat (getenv "_GOPATH_") "/src/golang.org/x/tools/cmd/oracle/oracle.el"))
  (when (file-exists-p oracle-file)
    (load-file oracle-file)))

(after-load 'auto-complete
  (require 'go-autocomplete))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook (lambda ()
			  (setq tab-width 4)
			  (local-set-key (kbd "C-c C-k") 'pop-tag-mark)
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
			  (local-set-key (kbd "C-c i") 'go-goto-imports)))

(provide 'init-dev-env-go)
;;; init-dev-env-go.el ends here
