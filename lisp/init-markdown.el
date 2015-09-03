(require-package 'markdown-mode)

;; GitHub Flavored Markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(provide 'init-markdown)
