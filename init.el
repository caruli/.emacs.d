(require 'package) ;; You might already have this line
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)


(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize) ;; You might already have this line




;; add your modules path
(add-to-list 'load-path "~/.emacs.d/custom")






  
(ac-config-default) 
(setq ac-auto-show-menu nil)




(global-set-key (kbd "C-z") 'eval-buffer)	   









;; (use-package workgroups2
;; :ensure t  
;; ;; Change some settings
;; :config
;; (workgroups-mode 1))








































;;BEGIN_SRC emacs-lisp
(global-set-key (kbd "C-x g") 'magit-status)
;;END_SRC

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm auto-complete workgroups2 use-package dash async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
