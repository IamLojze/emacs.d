;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;     正对Go语言的配置    ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require-package 'go-mode)
(require-package 'flymake-go)
(require-package 'go-eldoc)
(require-package 'go-autocomplete)
(require-package 'go-errcheck)

(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

;;(require 'go-mode)
;;(require 'flymake-go)

;; 保持文件时格式化代码
(add-hook 'before-save-hook 'gofmt-before-save)

;; 为删除或者注释掉没有用到的import绑定快捷键
(add-hook 'go-mode-hook (lambda()
                         (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(provide 'init-go-mode.el)
