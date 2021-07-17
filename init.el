
;;; Code:
(load "~/.emacs.d/common.el")
(load "~/.emacs.d/key-customize.el")
(load "~/.emacs.d/package.el")
(load "~/.emacs.d/recentf-ext.el")
(load "~/.emacs.d/company-mode.el")
(load "~/.emacs.d/language.el")
(load "~/.emacs.d/flycheck.el")
(load "~/.emacs.d/helm.el")

(provide 'init)
;;; init.el ends here


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(helm flycheck company recentf-ext)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
