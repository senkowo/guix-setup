(define-module (src home modules shells))

(use-modules (gnu home services) ; service-extension
             (gnu home services shells) ; env-vars-service-type
             (gnu services) ; services
             (guix gexp) ; local-file
             )

;; (export my/bash-service
;;         my/zsh-service)

;; (define my-shell-aliases
;;   '( ;; pivotal
;;     ("em" . "emacsclient")
;;     ;; general
;;     ("l" . "ls")
;;     ("ls" . "ls -p --color=auto")
;;     ("la" . "ls -a")
;;     ("ll" . "ls -lah --color=auto")
;;     ("rm" . "rm -i")
;;     ("ts" . "trash")
;;     ("b" . "cd ..")
;;     ("p" . "cd -")
;;     ("grep" . "grep --color=auto")
;;     ;; util
;;     ("clipboard" . "xclip -sel clip")
;;     ;; misc
;;     ("iping" . "ping gnu.org")
;;     ("recursive-find" . "grep -rnw . -e")
;;     ("recompileurxvt" . "xrdb ~/.Xresources")))

;; (define my-env-vars
;;   `( ;; ls fix print dots first
;;     ("LC_COLLATE" . "C")
;;     ;; fix CC compilation
;;     ("CC" . "gcc")
;;     ;; Emacs is our editor
;;     ("VISUAL" . "emacsclient")
;;     ("EDITOR" . "emacsclient")
;;     ;; add .bin and setuid programs to path
;;     ("PATH" . ,(string-append
;;                 "$HOME/.bin:"
;;                 "$HOME/.cargo/bin:"
;;                 "$HOME/.local/bin:"
;;                 "/run/setuid-programs:"
;;                 "$PATH"))
;;     ;; make flatpak apps visible
;;     ("XDG_DATA_DIRS" . "$XDG_DATA_DIRS:$HOME/.local/share/flatpak/exports/share")
;;     ;; FIX for stumpwm???
;;     ;; ("SBCL_HOME" . "$HOME/.guix-home/profile/lib/sbcl")
;;     ;; no telemetry when compiling osu
;;     ("DOTNET_CLI_TELEMETRY_OPTOUT" . "1")

;;     ))

(define-public my/bash-service
  (list
   (service home-bash-service-type
	    ;; (home-bash-configuration
            ;;  ;; both defined above:
	    ;;  ;; (aliases my-shell-aliases)
            ;;  ;; (environment-variables my-env-vars)
            ;;  ;; vterm-integration
	    ;;  ;; (bashrc (list (local-file
	    ;;  ;;    	    "../../.files/.bashrc" "bashrc")))
            ;;  ;; source guix-extra-profiles, load nix env, load nix profiles,
            ;;  ;; dont use system pulseaudio config
	    ;;  ;; (bash-profile (list (local-file
	    ;;  ;;    		  "../../.files/.shell_profile" "bash_profile")))
            ;;  )
            )))

(define-public my/zsh-service
  (list
   (service home-zsh-service-type
            ;; (home-zsh-configuration
            ;;  (environment-variables my-env-vars)
            ;;  ;; (aliases my-shell-aliases)
            ;;  (zshrc (list (local-file "../../.files/.zshrc" "zshrc")))
            ;;  (zprofile (list (local-file "../../.files/.shell_profile" "zprofile"))))
            )))
