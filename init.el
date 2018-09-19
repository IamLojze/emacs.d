(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)

(require 'init-better-defaults.el)

(require 'evil-mode.el)

(require 'init-ui.el)

(require 'init-keybindings.el)
(require 'init-markdown.el)

(require 'init-web-mode.el)
(require 'init-blog-mode.el)

;; Org mode configer
(defun my-org-mode-hook()
  "This is the function of org mode hook."
  (require 'init-org.el)
  )
(add-hook 'org-mode-hook 'my-org-mode-hook)

;; Python mode configer
(defun my-python-mode-hook()
  "This is the function of python mode hook"
  (require 'init-python-mode.el)
)
(add-hook 'python-mode-hook 'my-python-mode-hook)

;; C/Cpp mode configer
(defun my-cpp-mode-hook()
     "This is the function of c/cpp mode hook"
     (require 'init-cpp-mode.el)
)
(add-hook 'c-mode-common-hook 'my-cpp-mode-hook)

;; EShell Mode Configer
(defun my-eshell-mode-hook()
  "This is the function of eshell mode hook."
  (require 'init-eshell-mode.el)
)
(add-hook 'eshell-mode-hook 'my-eshell-mode-hook)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(elfeed-feeds nil)
 '(org-agenda-files (quote ("~/SynologyDrive/Org/SinaWorkFlow.org")))
 '(package-selected-packages
   (quote
    (org2blog org-mobile-sync color-theme-sanityinc-tomorrow evil auto-complete yasnippet autopair smex smartparens nodejs-repl monokai-theme js2-mode hungry-delete exec-path-from-shell counsel company color-theme colemak-evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
