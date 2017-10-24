;;; yatw-mode.el --- Yet Another Task Warrior Mode

;; Copyright © 2016, by diamond-lizard

;; Author: diamond-lizard
;; Version: 0.0.1
;; Keywords: color, convenience

;; This file is not part of GNU Emacs.

;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Affero General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Affero General Public License for more details.
;;
;;  You should have received a copy of the GNU Affero General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Syntax highlighting for buffers created by the taskwarrior edit command

;;; Code:

(defvar yatw-mode-font-lock-keywords)
(setq yatw-mode-font-lock-keywords
      `(
        ("#.*"                         . font-lock-comment-face)
        ("^  ID:"                      . font-lock-keyword-face)
        ("^  UUID:"                    . font-lock-keyword-face)
        ("^  Status:"                  . font-lock-keyword-face)
        ("^  Mask:"                    . font-lock-keyword-face)
        ("^  iMask:"                   . font-lock-keyword-face)
        ("^  Project:"                 . font-lock-keyword-face)
        ("^  Tags:"                    . font-lock-keyword-face)
        ("^  Description:"             . font-lock-keyword-face)
        ("^  Created:"                 . font-lock-keyword-face)
        ("^  Started:"                 . font-lock-keyword-face)
        ("^  Ended:"                   . font-lock-keyword-face)
        ("^  Scheduled:"               . font-lock-keyword-face)
        ("^  Due:"                     . font-lock-keyword-face)
        ("^  Until:"                   . font-lock-keyword-face)
        ("^  Recur:"                   . font-lock-keyword-face)
        ("^  Wait until:"              . font-lock-keyword-face)
        ("^  Modified:"                . font-lock-keyword-face)
        ("^  Parent:"                  . font-lock-keyword-face)
        ("^  Annotation:"              . font-lock-keyword-face)
        ("^  Dependencies:"            . font-lock-keyword-face)
        ("^  User Defined Attributes:" . font-lock-keyword-face)
        ("^  UDA priority:"            . font-lock-keyword-face)
       )
)

;;;###autoload
(define-derived-mode yatw-mode text-mode
  "yatw"
  "Major mode for taskwarrior tasks."
  (setq font-lock-defaults '((yatw-mode-font-lock-keywords)))
)

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.task\\'" . yatw-mode))

(provide 'yatw-mode)

;; Local Variables:
;; coding: utf-8
;; End:

;;; yatw-mode.el ends here
