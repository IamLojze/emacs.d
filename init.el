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
