;;; package --- Summary
;;; Commentary:

;;; Key customize

;;; Code:

;; M-pでコンパイル
(global-set-key [(meta p)]	'compile)
;; C-hで前一文字削除
(global-set-key [(control h)]	'delete-backward-char)
;; S-SPCで半角-全角切り替え
(global-set-key (kbd "S-SPC")	'toggle-input-method)
;; M-gで指定した行へジャンプ
(global-set-key [(meta g)]	'goto-line)
;; M-cで範囲内文字数をカウント
(global-set-key [(meta c )]	'compile)
;; C-c C-rでバッファを再評価
(define-key global-map (kbd "C-c C-r")     'eval-buffer)
;; tabキーでspaceでインデント
(setq-default indent-tabs-mode nil)

;; macでsuper-keyとaltを入れ替える
;; https://www.naney.org/diki/d/2015-04-24-Emacs.html
(when (and (eq system-type 'darwin) (eq window-system 'ns))
   (setq ns-command-modifier (quote meta))
   (setq ns-alternate-modifier (quote super)))

;;; key-customize.el ends here

