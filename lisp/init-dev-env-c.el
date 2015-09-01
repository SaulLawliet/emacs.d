;; 首先, 需要在系统里安装clang, 才能触发c-mode的company补全.

;; 配置include补全
(require-package 'company-c-headers)
(after-load 'company
  (add-to-list 'company-backends 'company-c-headers))

;; 下面这一句需要写到init-local.el文件中
;; 其中路径查询使用: gcc -xc++ -E -v -
;;(after-load 'company-c-headers
;;  (add-to-list 'company-c-headers-path-system '"/usr/lib/gcc/x86_64-linux-gnu/4.9/include"))

(provide 'init-dev-env-c)
