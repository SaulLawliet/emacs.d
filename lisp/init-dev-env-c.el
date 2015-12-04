;;; package --- V
;;; Commentary:
;;; Code:

;; 首先, 需要在系统里安装 clang, 才能触发 c-mode 的 company 补全.
;; include 补全
(require-package 'auto-complete-c-headers)
(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))
(add-hook 'c-mode-hook 'my:ac-c-headers-init)

;; 下面这一句需要写到 init-local.el 文件中
;; 其中路径查询使用: gcc -xc -E -v -
;;(after-load 'auto-complete-c-headers
;;  (add-to-list 'achead:include-directories '"your include path"))

;; iedit, 批量修改变量名, 貌似是按照字符匹配
(require-package 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; flymake-google-cpplint
;; 此功能需要在系统安装 cpplint, 可以通过pip安装
(require-package 'flymake-google-cpplint)
(add-hook 'c-mode-hook 'flymake-google-cpplint-load)
(add-hook 'c++-mode-hook 'flymake-google-cpplint-load)

;; 下面这一句需要写到 init-local.el 文件中
;; 查询 cpplint 命令位置: type cpplint
;;(custom-set-variables
;; '(flymake-google-cpplint-command "/path/to/cpplint.py"))

;; flymake-cursor, 查看错误提示
(require-package 'flymake-cursor)

;; google-c-style
(require-package 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


(provide 'init-dev-env-c)
;;; init-dev-env-c.el ends here
