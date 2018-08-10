;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;     增强内置功能      ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近 编辑过的文件。
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; 使用下面的配置文件将删除功能配置成与其他图形界面的编辑器相同，
;; 即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

;;; 设置备份策略
(setq make-backup-files t)
(setq kept-old-versions 2)
(setq kept-new-versions 2)
(setq delete-old-versions t)
(setq backup-directory-alist '(("" . "~/.emacsbackup")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(org-agenda-files (quote ("~/Org/WorkFlow/SinaWorkFlow.org")))
 '(package-selected-packages
   (quote
    (org-mobile-sync color-theme-sanityinc-tomorrow evil auto-complete yasnippet autopair smex smartparens nodejs-repl monokai-theme js2-mode hungry-delete exec-path-from-shell counsel company color-theme colemak-evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 开启括号补全
(autopair-global-mode)

;; 启用自动括号匹配（Highlight Matching Parenthesis）
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 设置显示当前文件函数列表
;; (imenu-list-minor-mode)
(setq imenu-list-focus-after-activation t)
(setq imenu-list-auto-resize t)

(require 'ido)
(ido-mode t)

(setq load-path (cons "~/.emacs.d/plugins/" load-path))
(autoload 'gtags-mode "gtags" "" t)

;; auto-complete
(ac-config-default)

;; 窗口切换
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
(window-numbering-mode 1)

(provide 'init-better-defaults.el)
