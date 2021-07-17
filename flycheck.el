;;; package --- Summary
;;; Commentary:

;;; flycheck

;;; Code:

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; key-bindings
(define-key global-map (kbd "C-c C-n")     'flycheck-next-error)
(define-key global-map (kbd "C-c n")     'flycheck-next-error)
(define-key global-map (kbd "C-c C-p")     'flycheck-previous-error)
(define-key global-map (kbd "C-c p")     'flycheck-previous-error)

;; setup for Javascript and JSX
;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))
;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; setup for Typescript and TSX
(flycheck-add-mode 'typescript-tslint 'typescript-mode)

(setq-default flycheck-temp-prefix ".flycheck")

;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize))

;;; flycheck.el ends here
