;;; package --- V
;;; Commentary:
;;; Code:

;; exec-path-from-shell: 从shell中初始化PATH
(require-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; evil: 使用Vim式的快捷键
;;(require-package 'evil)
;;(evil-mode 1)


;; switch-window: 通过数字切换窗口
(require-package 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)


;; markdown-mode: 支持markdown语法高亮
(require-package 'markdown-mode)
;; GitHub Flavored Markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; helm:
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-autoresize-mode t)
(helm-mode 1)

(provide 'init-function)
;;; init-function.el ends here
