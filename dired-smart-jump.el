;;; dired-smart-jump.el --- DWIM jump-commands for GNU Emacs dired buffers
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@gmail.com>
;; Version: 1.0.0
;; Keywords: dired movement
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/ericcrosson/dired-smart-jump
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; This package provides simple jump commands for dired buffers.

;;; Code:

(eval-when-compile
  (require 'dired))

;;;###autoload
(defun dired-smart-jump-to-top ()
  "Move point to top-most element of dired buffer."
  (interactive)
  (goto-char (point-min))
  (unless (search-forward ".." nil 'noerror)
    (goto-char (point-min)))
  (dired-next-line 1))

;;;###autoload
(defun dired-smart-jump-to-bottom ()
  "Move point to bottom-most element of dired buffer."
  (interactive)
  (goto-char (point-max))
  (dired-next-line -1))

;;; Bind functions into dired-mode-map
(define-key dired-mode-map (vector 'remap 'beginning-of-buffer) 'dired-smart-jump-to-top)
(define-key dired-mode-map (vector 'remap 'end-of-buffer) 'dired-smart-jump-to-bottom)


(provide 'dired-smart-jump)

;;; dired-smart-jump.el ends here
