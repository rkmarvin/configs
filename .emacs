;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)
(add-to-list 'package-archives
       '("elpy" . "http://jorgenschaefer.github.io/packages/"))   
(add-to-list 'package-archives
       '("melpa" . "https://melpa.org/packages/") t)

;; activate all packages
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; define list of packages to install
(defvar myPackages
  '(better-defaults
    direx
    intellij-theme
    material-theme
    dark-mint-theme
    nord-theme
    tramp
    multi-term
    windresize
    magit
    magit-gitflow
    exec-path-from-shell
    elpy
    blacken
    projectile
    pyenv-mode))

;; install all packages in list
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; Use shell's $PATH
(setq exec-path-from-shell-arguments '("-l"))
(exec-path-from-shell-copy-env "PATH")
(setenv "WORKON_HOME" "~/.envs")

(require 'tramp)
(require 'windresize)
(require 'magit)
(require 'magit-gitflow)

(require 'ido)
(ido-mode t)

(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;; TODOIST
(setq todoist-token "f1cf6cc36276b88781287cc8ad03c8c019921a9c")
(setq todoist-show-all t)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(setq-default fill-column 79)
(global-display-fill-column-indicator-mode t)  ;; set line counter border

(set-face-attribute 'default nil :font "Hack" :height 100)
(setq inhibit-startup-message t)   ;; hide the startup message
(menu-bar-mode -1)                ;; hide menu bar
(tool-bar-mode -1)                ;; hide tool bar
(load-theme 'intellij t)           ;; load material theme
(global-linum-mode t)              ;; enable line numbers globally
(setq linum-format "%4d \u2502 ")  ;; format line number spacing
;; Allow hash to be entered  
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; PYTHON SETTINGS
;; Git + git-flow
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(elpy-enable)
;;(pyenv-mode)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d916b686ba9f23a46ee9620c967f6039ca4ea0e682c1b9219450acee80e10e40" "660376e0336bb04fae2dcf73ab6a1fe946ccea82b25f6800d51977e3a16de1b9" "b5dd9b010ba8ac35e18f25be917f1e2dfa5f391784e54848a8853ae000996337" "08765d801b06462a3ce7e414cdb747436ccaf0c073350be201d8f87bd0481435" "6151e76f90a494363b167acdb0d36aada6d34c1843999523abe46764abb04179" "afd761c9b0f52ac19764b99d7a4d871fc329f7392dfc6cd29710e8209c691477" "d4f8fcc20d4b44bf5796196dbeabec42078c2ddb16dcb6ec145a1c610e0842f3" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" default))
 '(global-display-fill-column-indicator-mode t)
 '(package-selected-packages
   '(todoist multi-term pyenv-mode exec-path-from-shell better-defaults counsel ivy blacken flycheck elpy maigt light ## uniguify intellij-theme dark-mint-theme dakrone-light-theme green-phosphor-theme green-is-the-new-black-theme windresize magit-gitflow material-theme helm-projectile helm magit tron-legacy-theme nord-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "MediumOrchid3" :inverse-video t)))))
