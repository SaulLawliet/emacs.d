(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(provide 'init-markdown)
