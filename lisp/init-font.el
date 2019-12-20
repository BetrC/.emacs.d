
;; here we use cnfonts to manage our fonts

(require 'cnfonts)
(cnfonts-enable)

(setq cnfonts-keep-frame-size nil)


(when (memq window-system '(mac ns))
  (cnfonts-increase-fontsize))
;; init font end here
(provide 'init-font)
