
;; enable company
(global-company-mode t)

;; show delay
(setq company-idle-delay 0.1)
;; active minimum num
(setq company-minimum-prefix-length 1)


;; abbrev
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table
  '(
    ("cjk" "陈建坤")
    ("mail" "xj19971@gmail.com")
    ("pr" "printf")
    ;; write your style here
    ))

;; init-company end here
(provide 'init-company)
