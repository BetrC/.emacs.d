
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-package)

(require 'hungry-delete)
(global-hungry-delete-mode)


(require 'init-ui)
(require 'init-window)
(require 'init-org)
(require 'init-ivy)
(require 'init-company)
(require 'init-system)
(require 'init-font)
(require 'init-file-sys)

;; scripting language initialize
(require 'init-coding)
(require 'init-lua)
(require 'init-js)

;; custom
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
