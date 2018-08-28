(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)

(require 'init-better-defaults.el)

(require 'evil-mode.el)

(require 'init-ui.el)

(require 'init-keybindings.el)

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




