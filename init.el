(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)

(require 'init-better-defaults.el)

(require 'evil-mode.el)

(require 'init-cpp-mode.el)

(require 'init-org.el)

(require 'init-ui.el)

(require 'init-keybindings.el)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(org-agenda-files
   (quote
    ("~/SynologyDrive/Org/Mobile/WorkFlows/SinaWorkFlow.org" "~/SynologyDrive/Org/WorkFlows/SinaWorkFlow.org")))
 '(package-selected-packages
   (quote
    (org-mobile-sync color-theme-sanityinc-tomorrow evil auto-complete yasnippet autopair smex smartparens nodejs-repl monokai-theme js2-mode hungry-delete exec-path-from-shell counsel company color-theme colemak-evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
