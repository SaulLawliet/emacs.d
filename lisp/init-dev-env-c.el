;; 首先, 需要在系统里安装 clang, 才能触发 c-mode 的 company 补全.

;; include 补全
(require-package 'company-c-headers)
(after-load 'company
  (add-to-list 'company-backends 'company-c-headers))
;; 下面这一句需要写到 init-local.el 文件中
;; 其中路径查询使用: gcc -xc -E -v -
;;(after-load 'company-c-headers
;;  (add-to-list 'company-c-headers-path-system '"your include path"))

;; iedit, 批量修改变量名, 貌似是按照字符匹配
(require-package 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; flymake-google-cpplint
;; 此功能需要在系统安装 cpplint, 可以通过pip安装
(require-package 'flymake-google-cpplint)
(add-hook 'c-mode-common-hook 'flymake-google-cpplint-load)

;; 下面这一句需要写到 init-local.el 文件中
;; 查询 cpplint 命令位置: type cpplint
;;(custom-set-variables
;; '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))

;; flymake-cursor, 查看错误提示
(require-package 'flymake-cursor)

;; google-c-style
(require-package 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


(provide 'init-dev-env-c)
