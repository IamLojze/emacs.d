;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;    针对Python的优化      ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;解决编辑Python代码时的 UTF-8 报错
(set-language-environment "UTF-8")
(define-coding-system-alias 'UTF-8 'utf-8)

(message "This is Python mode.")

(provide 'init-python-mode.el)
