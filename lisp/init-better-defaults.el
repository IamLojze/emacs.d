;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;     增强内置功能        ;;
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

;; 将Emacs的滚动方式设置为平滑滚动
;;(setq smooth-scrooll-margin 3)
(setq scroll-margin 5
      scroll-conservatively 9999
      scroll-step 1)


;;设置Emacs环境变量
(defun set-exec-path-from-shell-PATH ()
 (let ((path-from-shell (replace-regexp-in-string
"[ tn]*$"
""
 (shell-command-to-string"$SHELL --login -i -c 'echo $PATH'"))))
 (setenv"PATH" path-from-shell)
 (setq eshell-path-env path-from-shell) ; for eshell users
 (setq exec-path (split-string path-from-shell path-separator))))
(when window-system (set-exec-path-from-shell-PATH))


(provide 'init-better-defaults.el)





