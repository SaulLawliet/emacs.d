(require-package 'company)

;; Use company-mode in all buffers.
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.25)

(deftheme jfut "just for ubuntu terminal")
(custom-theme-set-faces
 'jfut
 '(company-tooltip ((t (:background "#000000")))))


(provide 'init-company)
