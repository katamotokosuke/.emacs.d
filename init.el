
(package-initialize)
(require 'linum)
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'helm-config)
(helm-mode 1)
(load-theme 'manoj-dark)
;;projectile
(setq projectile-completion-system 'helm)
;;projectil-rails
(projectile-rails-global-mode)


;;tab
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
;;tabsize
(setq default-tab-width 2)

;;タイトルにフルパス表示
(setq frame-title-format "%f")


;;行番号表示
(global-linum-mode)

;;バックアップファイル作成しない
(setq make-backup-file t)
;;自動保存ファイルを作成しない
(setq auto-save-default nil)
;;ロックファイルを作成しない
(setq create-lockfiles nil)
;;Message Bufferを消す
(setq-default message-log-max nil)
(kill-buffer "*Messages*")


;;start up 画面を出さない
(setq inhibit-startup-screen t)
;;メニューバーを消す
(tool-bar-mode 0)
(menu-bar-mode 0)

;;対応するカッコを光らせる
(show-paren-mode t)

;;スクロールは1行
(setq scroll-conservatively 1)

;;ハイライト
(global-auto-highlight-symbol-mode t)

;;()や "" の後ろを自動挿入
(electric-pair-mode 1)

(defun helm-grep-do-git-grep-all()
  (interactive)
  (helm-grep-do-git-grep t))

;;key binding
(global-set-key (kbd "C-x C-t") 'neotree-toggle)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "C-t") 'other-window-or-split)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x f") 'projectile-find-file)
(define-key global-map(kbd "C-h C-g") 'helm-grep-do-git-grep-all)
(global-set-key (kbd "M-x") 'helm-M-x)


;;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;;(define-key helm-M-x-map (kbd "TAB") 'helm-execute-persistent-action)


;;補完
(global-company-mode)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)


