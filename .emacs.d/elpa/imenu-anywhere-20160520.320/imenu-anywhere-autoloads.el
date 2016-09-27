;;; imenu-anywhere-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "imenu-anywhere" "imenu-anywhere.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from imenu-anywhere.el

(autoload 'imenu-anywhere "imenu-anywhere" "\
Switch to a buffer-local tag from Imenu via Ido.

\(fn &optional MODES)" t nil)

(defalias 'ido-imenu-anywhere 'imenu-anywhere)

(autoload 'helm-imenu-anywhere "imenu-anywhere" "\
`helm' source for `imenu-anywhere'.
Sorting is in increasing order of length of imenu symbols.  The
pyramidal view allows distinguishing different buffers.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; imenu-anywhere-autoloads.el ends here
