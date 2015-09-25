;; ========== semx
(require-package 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; ========== 

;; ========== ido
(require-package 'ido)
(ido-mode t)
;; ========== 

;; ========== sr-speedbar
(require-package 'sr-speedbar)
(global-set-key (kbd "<f8>") 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-auto-refresh nil)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
;; ========== 

;; ========== switch-window
(require-package 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
;; ==========


(provide 'init-function)
