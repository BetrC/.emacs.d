
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-package)

(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'init-system)
(require 'init-font)
(require 'init-theme)
(require 'init-org)
(require 'init-ivy)
(require 'init-company)

;; scripting language initialize
(require 'init-lua)
(require 'init-js)

;; custom
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
