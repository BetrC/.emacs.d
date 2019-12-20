
;; default recursive
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; user only one buffer
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载Dried Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET" 'dired-find-alternate-file))

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(require 'dired-x)

;; delete "\r"
(defun remove-dos-eol()
  "Replace DOS eolns CR CF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(provide 'init-file-sys)
