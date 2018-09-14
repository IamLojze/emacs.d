;; Org2blog 模式下需要用到的插件
(require-package 'org2blog)
(require-package 'metaweblog)
(require-package 'htmlize)

;; org2blog
(require 'org2blog-autoloads)

(require 'auth-source) ;; or nothing if already in the load-path

(let (credentials)
  ;; only required if your auth file is not already in the list of auth-sources
  (add-to-list 'auth-sources "~/.netrc")
  (setq credentials (auth-source-user-and-password "FlowLore"))
  (setq org2blog/wp-blog-alist
        `(("Flow-Lore"
           :url "https://www.flowlore.com/xmlrpc.php"
           :username ,(car credentials)
           :password ,(cadr credentials)
           :keep-new-lines t
           :confirm t
           :wp-code nil
           :tags-as-categories nil))))


;; Rog2blog 模板
(setq org2blog/wp-buffer-template
  "#+DATE: %s
   #+OPTIONS: toc:nil num:nil todo:nil pri:nil tags:nil ^:nil TeX:nil
   #+CATEGORY: Heart
   #+TAGS:
   #+PERMALINK:
   #+TITLE:
   \n")

(provide 'init-blog-mode.el)
