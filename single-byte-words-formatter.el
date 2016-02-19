;-*- Emacs-Lisp -*-
;;; single-byte-words-formatter --- format single-byte words in multi-byte sentence
;;
;; Copyright (C) 2016 risou
;;
;; Author: risou <risou.f@gmail.com>
;; Created: 2016-02-19

(defun format-single-byte-words ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "\\([^\x00-\x7F]\\)\\([0-9a-zA-Z ]+\\)" nil t)
	  (replace-match (concat (match-string 1) " " (match-string 2))))
	(goto-char (point-min))
	(while (re-search-forward "\\([0-9a-zA-Z ]+\\)\\([^\x00-\x7F]\\)" nil t)
	  (replace-match (concat (match-string 1) " " (match-string 2))))
	))
