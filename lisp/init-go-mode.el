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

;;auto-complete
(add-to-list 'load-path "/Users/lojze/.emacs.d/plugins")
(require 'auto-complete-config)
(require 'go-autocomplete)
(ac-config-default)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
(set (make-local-variable 'company-backends) '(company-go))
(company-mode)))

;; 保存文件时格式化代码
(add-hook 'before-save-hook 'gofmt-before-save)

;; 为删除或者注释掉没有用到的import绑定快捷键
(add-hook 'go-mode-hook (lambda()
                         (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

;; 取消语法检测
;; 对Go执行语法检测
;; (require 'go-flymake)
;; (add-hook 'flymake-mode-hook
;;       (lambda()
;;         (local-set-key (kbd "C-c C-e n") 'flymake-goto-next-error)))
;; (add-hook 'flymake-mode-hook
;;       (lambda()
;;         (local-set-key (kbd "C-c C-e p") 'flymake-goto-prev-error)))
;; (add-hook 'flymake-mode-hook
;;       (lambda()
;;         (local-set-key (kbd "C-c C-e m") 'flymake-popup-current-error-menu)))

 ;; golang mode
 (require 'go-mode)
 ;; speedbar
 ;; (speedbar 1)
 (speedbar-add-supported-extension ".go")
 (add-hook
 'go-mode-hook
 '(lambda ()
 	;; gocode
 	(auto-complete-mode 1)
 	(setq ac-sources '(ac-source-go))
 	;; Imenu & Speedbar
 	(setq imenu-generic-expression
 		'(("type" "^type *\\([^ \t\n\r\f]*\\)" 1)
 		("func" "^func *\\(.*\\) {" 1)))
 	(imenu-add-to-menubar "Index")
 	;; Outline mode
 	(make-local-variable 'outline-regexp)
 	(setq outline-regexp "//\\.\\|//[^\r\n\f][^\r\n\f]\\|pack\\|func\\|impo\\|cons\\|var.\\|type\\|\t\t*....")
 	(outline-minor-mode 1)
 	(local-set-key "\M-a" 'outline-previous-visible-heading)
 	(local-set-key "\M-e" 'outline-next-visible-heading)
 	;; Menu bar
 	(require 'easymenu)
 	(defconst go-hooked-menu
 		'("Go tools"
 		["Go run buffer" go t]
 		["Go reformat buffer" go-fmt-buffer t]
 		["Go check buffer" go-fix-buffer t]))
 	(easy-menu-define
 		go-added-menu
 		(current-local-map)
 		"Go tools"
 		go-hooked-menu)

 	;; Other
 	(setq show-trailing-whitespace t)
 	))
 ;; helper function
 (defun go ()
 	"run current buffer"
 	(interactive)
 	(compile (concat "go run " (buffer-file-name))))

 ;; helper function
 (defun go-fmt-buffer ()
 	"run gofmt on current buffer"
 	(interactive)
 	(if buffer-read-only
 	(progn
 		(ding)
 		(message "Buffer is read only"))
 	(let ((p (line-number-at-pos))
 	(filename (buffer-file-name))
 	(old-max-mini-window-height max-mini-window-height))
 		(show-all)
 		(if (get-buffer "*Go Reformat Errors*")
 	(progn
 		(delete-windows-on "*Go Reformat Errors*")
 		(kill-buffer "*Go Reformat Errors*")))
 		(setq max-mini-window-height 1)
 		(if (= 0 (shell-command-on-region (point-min) (point-max) "gofmt" "*Go Reformat Output*" nil "*Go Reformat Errors*" t))
 	(progn
 		(erase-buffer)
 		(insert-buffer-substring "*Go Reformat Output*")
 		(goto-char (point-min))
 		(forward-line (1- p)))
 	(with-current-buffer "*Go Reformat Errors*"
 	(progn
 		(goto-char (point-min))
 		(while (re-search-forward "<standard input>" nil t)
 		(replace-match filename))
 		(goto-char (point-min))
 		(compilation-mode))))
 		(setq max-mini-window-height old-max-mini-window-height)
 		(delete-windows-on "*Go Reformat Output*")
 		(kill-buffer "*Go Reformat Output*"))))
 ;; helper function
 (defun go-fix-buffer ()
 	"run gofix on current buffer"
 	(interactive)
 	(show-all)
 	(shell-command-on-region (point-min) (point-max) "go tool fix -diff"))

(provide 'init-go-mode.el)
