;;插件管理

;; 设置 package system，这里使用 MELPA，里面的包可以说是应有尽有
 (require 'package)
 (add-to-list 'package-archives
 	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
 (package-initialize)
 
 (defun require-package (package &optional min-version no-refresh)
   "Install given PACKAGE, optionally requiring MIN-VERSION.
 If NO-REFRESH is non-nil, the available package lists will not be
 re-downloaded in order to locate PACKAGE."
   (if (package-installed-p package min-version)
     t
     (if (or (assoc package package-archive-contents) no-refresh)
       (if (boundp 'package-selected-packages)
         ;; Record this as a package the user installed explicitly
         (package-install package nil)
         (package-install package))
       (progn
         (package-refresh-contents)
         (require-package package min-version t)))))
 (defun maybe-require-package (package &optional min-version no-refresh)
   "Try to install PACKAGE, and return non-nil if successful.
 In the event of failure, return nil and print a warning message.
 Optionally require MIN-VERSION.  If NO-REFRESH is non-nil, the
 available package lists will not be re-downloaded in order to
 locate PACKAGE."
   (condition-case err
     (require-package package min-version no-refresh)
     (error
       (message "Couldn't install optional package `%s': %S" package err)
       nil)))
 
 ;; 自动安装需要插件
 (require-package 'imenu-list)
 (require-package 'evil)
 (require-package 'evil-leader)
 (require-package 'autopair)
 (require-package 'auto-complete)
 (require-package 'company)
 (require-package 'smex)
 (require-package 'ido)
 (require-package 'color-theme-sanityinc-tomorrow)
 (require-package 'yasnippet)
 (require-package 'switch-window)


;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
;;
;;(when (>= emacs-major-version 24)
;;    (require 'package)
;;    (package-initialize)
;;    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                         ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; 
;; ;; cl - Common Lisp Extension
;; ;;(require 'cl)
;; 
;; ;; Add Packages
;; ;;(defvar my/packages '(
;; 			   ;; --- Auto-completion ---
;; 			   company
;; 			   ;; --- Better Editor ---
;; 			   smooth-scrolling
;; 			   hungry-delete
;; 			   swiper
;; 			   counsel
;; 			   smartparens
;; 			   popwin
;;                            imenu-list
;;                            evil-leader
;; 			   ;; --- Major Mode ---
;; 			   js2-mode
;; 			   markdown-mode
;; 
;; ...

;; 文件末尾
(provide 'init-packages)
