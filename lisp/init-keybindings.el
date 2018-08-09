;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;     快捷键绑定        ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 这个快捷键绑定可以用之后的插件 counsel 代替
;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; yasnippet setting
(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

;; 设置 f2 为 yas 扩展快捷键
(define-key yas-minor-mode-map (kbd "<f2>") 'yas-expand)

;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; 针对 evil 的按键绑定
;;取消q 的功能
(define-key evil-normal-state-map (kbd "q") nil)

;; 输入模式下取消下面这些按键绑定，使得在输入的时候可以高效的移动光标
(define-key evil-insert-state-map (kbd "C-e") nil)
(define-key evil-insert-state-map (kbd "C-d") nil)
(define-key evil-insert-state-map (kbd "C-k") nil)
(define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)

;; 其他绑定
(define-key evil-motion-state-map (kbd "C-e") nil)
(define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)
(define-key key-translation-map [(control u)] [(meta v)])


;; 设置leader 可以自定义按键
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
   ;; ,+w 打开当前文件中代码框架
  "w" 'imenu-list-smart-toggle
  "ff" 'find-file
  "fr" 'recentf-open-files
  "0"  'select-window-0
  "1"  'select-window-1
  )

(provide 'init-keybindings.el)
