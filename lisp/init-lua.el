
;; config lua-mode for lua file
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(require 'company)
(require 'company-lua)

(defun my-lua-mode-company-init()
  (setq-local company-backends '(
				 (company-lua)
				 (company-etags)
				 (company-dabbrev-code)
				 (company-yasnippet)
				 )))

(add-hook 'lua-mode-hook #'my-lua-mode-company-init)

;; flymake-lua
(require 'flymake-lua)
  (add-hook 'lua-mode-hook 'flymake-lua-load)

(provide 'init-lua)
