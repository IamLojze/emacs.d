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
(set-face-attribute 'default nil :height 150)

;; 设置字体
(set-default-font "Courier New")

;; 设置光标样式
;; (setq-default cursor-type 'bar)

;; 安装主题
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'nimbus-theme)
(load-theme 'nimbus t)
;; (require 'color-theme-sanityinc-tomorrow)
;; (customize-themes)

;; 设置Tab键为空格
(setq-default indent-tabs-mode nil)
;; Tab 为 4 个空格。
(setq default-tab-width 4)
(setq c-default-style "Linux")
(setq c-basic-offset 4)

;; 在X-window模式启动时隐藏工具栏，滚动条
(defun x-window-config()

  ;; No tool bar
  (if (fboundp 'tool-bar-mode)
      (tool-bar-mode -1))

  ;; No scroll bar
  (if (fboundp 'set-scroll-bar-mode)
      (set-scroll-bar-mode nil))

  ;; No menu bar
  (if (fboundp 'menu-bar-mode)
      (menu-bar-mode -1))
)
(if window-system (x-window-config))

;; 高亮当前行
(global-hl-line-mode t)

;; 设置窗口初始大小
;; (setq default-frame-alist
;;       `((top . 0)
;;         (right. 0)
;;         (width . 170)
;;         (height . 63)
;;         ))

;; 设置 CMake 支持
(setq load-path(cons (expand-file-name "~/.emacs.d/plugins") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))


(provide 'init-ui.el)
