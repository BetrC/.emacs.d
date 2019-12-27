;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(require 'cl)

;; add whatever package you want here
(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      js2-mode
		      nodejs-repl
		      lua-mode
		      cnfonts
		      popwin
		      company-lua
		      reveal-in-osx-finder
		      web-mode
		      js2-refactor
		      expand-region
		      iedit
		      luarocks
		      flymake-lua
		      flycheck
		      evil
		      evil-leader
		      window-numbering
		      evil-surround
		      evil-nerd-commenter
		      which-key
          ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; snails just test
(when (memq window-system '(mac ns))
  (add-to-list 'load-path "~/.emacs.d/lisp/snails") ; add snails to your load-path
  (require 'snails))


;; init packages end here
(provide 'init-package)

