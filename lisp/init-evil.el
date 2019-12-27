
(evil-mode 1)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)

(global-evil-leader-mode)

;; evil leader key
(evil-leader/set-key
 "ff" 'find-file
 "bb" 'switch-to-buffer
 "0"  'select-window-0
 "1"  'select-window-1
 "2"  'select-window-2
 "3"  'select-window-3
 "w/" 'split-window-right
 "w-" 'split-window-below
 ":"  'counsel-M-x
 "wM" 'delete-other-windows
 )


(window-numbering-mode 1)

(require 'evil-surround)
(global-evil-surround-mode)

(evilnc-default-hotkeys)
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)

(provide 'init-evil)
