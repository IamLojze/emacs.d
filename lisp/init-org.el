;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       ;;
;;     Org 相关配置      ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 同步 Org-mode 同步有问题，暂时不使用
 (require 'org)
 ;; Set to the location of your Org files on your local system
;; (setq org-directory "/Users/lojze/SynologyDrive/Org")
;;  ;; Set to the name of the file where new notes will be stored
;;  (setq org-mobile-inbox-for-pull "/Users/lojze/SynologyDrive/Org/Mobile/index.org")
;;  (setq org-mobile-directory "/Users/lojze/SynologyDrive/Org/Mobile")
;;  (setq org-mobile-force-id-on-agenda-items nil)
;;  (defcustom org-mobile-checksum-binary (or (executable-find "/usr/local/Cellar/md5sha1sum/0.9.5/bin/md5sum"))
;;   "Executable used for computing checksums of agenda files."
;;   :group 'org-mobile
;;   :type 'string)
(message "This is Org mode.")

(provide 'init-org.el)

;;(global-auto-revert-modet)
