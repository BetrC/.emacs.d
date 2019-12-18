;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa", "http:melpa.org/packages/") t))



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



;mode open or close
;close some default mode
(tool-bar-mode -1)
(scroll-bar-mode -1)

;open some useful mode
(global-linum-mode t)
(global-company-mode t)
(delete-selection-mode 1)
(electric-indent-mode 1)
(global-hl-line-mode t)



;set some mode
(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)
;; full screen
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;font size
(set-face-attribute 'default nil :height 140)


;org-mode hightlight
(require 'org)
(setq org-src-fontify-natively t)

;recent buffer
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


(require 'smartparens-config)
(smartparens-global-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(require 'hungry-delete)
(global-hungry-delete-mode)

(load-theme 'monokai t)


;; config js2-mode for js file
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
	 auto-mode-alist))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
