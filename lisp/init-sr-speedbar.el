(require-package 'sr-speedbar)

;; (global-set-key (kbd "F8") 'sr-speedbar-toggle')
(global-set-key (kbd "<f8>") 'sr-speedbar-toggle)

(setq sr-speedbar-right-side nil)
(setq sr-speedbar-auto-refresh nil)

(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)

(provide 'init-sr-speedbar)
