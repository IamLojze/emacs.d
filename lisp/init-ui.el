;;;;;;;;;;;;;;;;;;;;;;
;;                  ;;
;;   视觉管理配置   ;;
;;                  ;;
;;;;;;;;;;;;;;;;;;;;;;

;; 显示行号
(global-linum-mode 1)

;; 关闭启动帮助画面
 (setq inhibit-splash-screen 1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

;; 设置字体
(set-default-font "Courier New")

;; 设置光标样式
(setq-default cursor-type 'bar)

;; 安装主题
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'color-theme-sanityinc-tomorrow)
(customize-themes)

;; 设置Tab键为空格
(setq-default indent-tabs-mode nil)
;; Tab 为 4 个空格。
(setq default-tab-width 4)
(setq c-default-style "Linux")
(setq c-basic-offset 4)


;; 设置窗口初始大小
(setq default-frame-alist
      `((top . 0)
        (right. 0)
        (width . 152)
        (height . 60)
        ))


(provide 'init-ui.el)
