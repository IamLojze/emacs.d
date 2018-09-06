
;; evil search word instead of symbol
(setq evil-symbol-word-search t)

;; Enable evil-mode
(evil-mode 1)

(setq evil-default-cursor t)

(defun evil-surround-org-mode-hook-setup ()
  (push '(91 . ("[" . "]")) evil-surround-pairs-alist)
  (push '(93 . ("[" . "]")) evil-surround-pairs-alist)
  (push '(?= . ("=" . "=")) evil-surround-pairs-alist))
(add-hook 'org-mode-hook 'evil-surround-org-mode-hook-setup)

;; 设置leader 可以自定按键
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
   ;; ,+w 打开当前文件中代码框架
  "w" 'imenu-list-smart-toggle
  "ff" 'find-file
  "fr" 'recentf-open-files
  "es" 'eshell
  "b"  'switch-to-buffer
  "kk" 'scroll-other-window
  "jj" 'scroll-other-window-down
  "pw" 'pwd
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "5"  'select-window-5
  "6"  'select-window-6
  "7"  'select-window-7
  "8"  'select-window-8
  "9"  'select-window-9
  )

(provide 'evil-mode.el)

