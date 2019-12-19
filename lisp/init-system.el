
;; close tool bar
(tool-bar-mode -1)
;; close scroll bar
(scroll-bar-mode -1)

;; menu bar
(require 'menu-bar)
(menu-bar-mode nil)

;; show line num
(global-linum-mode t)
;; when select something, edit will do delete
(delete-selection-mode 1)
;; auto indent
(electric-indent-mode 1)
;; hightlight current line
(global-hl-line-mode t)
;; kill whole line
(setq kill-whole-line t)
;; big file no warning
(setq  large-file-warning-threshold nil)
;; remember cursor position at next open
(setq-default save-place t)
(save-place-mode t)

;; replace "yes" by 'y'
(fset 'yes-or-no-p 'y-or-n-p)
;; hide default screen
(setq inhibit-splash-screen t)
;; set cursor type
(setq-default cursor-type 'bar)
;; no backup
(setq make-backup-files nil)
;; headline
(setq frame-title-format "%b  [%I] %f  GNU/Emacs" )
;; kill ring
(setq kill-ring-max 200)
(setq kill-do-not-save-duplicates t)
;; fill column auto
(setq-default fill-column 80)

;; full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; parent
(require 'smartparens-config)
(smartparens-global-mode t)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; open my init file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)



;;-----------------------------------------------------------
;; End if init-system
;;-----------------------------------------------------------
(provide 'init-system)
