;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;    针对Cpp的优化      ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;


; 开启全局 Company 补全
(add-hook 'after-init-hook'global-company-mode)
;; Try to config company for c language
;; 解决无法补全C语言
(add-hook 'c-mode-hook 'company-clang)

;; CPP插件配置
(setq fci-rule-column 80) ;; 80 个字节处画竖线
(setq fci-rule-color "orange") ;; 竖线为黄色
(setq fci-rule-width 2) ;; 竖线宽度为 2 个像素
;; (fci-mode 1) ;; 开启 fci 模式

;; 实现头文件和源文件直接快速切换
(defun switch-c ()
  (global-set-key (kbd "<C-return>")  'ffap)
  (evil-leader/set-key "," 'ff-find-other-file)
)
(add-hook 'c-mode-hook 'switch-c)

(defun switch-cpp ()
  (global-set-key (kbd "<C-return>")  'ffap)
  (evil-leader/set-key "," 'ff-find-other-file)
)
(add-hook 'c++-mode-hook 'switch-cpp)

(provide 'init-cpp-mode.el)
