;;; package --- V
;;; Commentary:
;;; Code:

;; exec-path-from-shell: 从shell中初始化PATH
(require-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; evil: 使用Vim式的快捷键
(require-package 'evil)
(evil-mode 1)


;; switch-window: 通过数字切换窗口
(require-package 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)


;; markdown-mode: 支持markdown语法高亮
(require-package 'markdown-mode)
;; GitHub Flavored Markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; whitespace-mode
(global-whitespace-mode 1)
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))


(provide 'init-function)
;;; init-function.el ends here
