
;; org mode hightlight
(require 'org)
(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook (lambda() (setq truncate-lines nil)))

;; init org end here

(provide 'init-org)
