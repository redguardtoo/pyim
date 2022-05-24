;;; pyim-elint.el --- syntax check the code  -*- lexical-binding: t -*-

;; Copyright (C) 2019-2021 Free Software Foundation, Inc.
;;
;; Version: 0.0.1
;; Keywords: keyword1 keyword2
;; Author: Chen Bin <chenbin.sh@gmail.com>
;; URL: https://github.com/tumashu/pyim

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;  Syntax check the pyim code.  It's used in Emacs cli.
;;

;;; Code:
(require 'elint)

(declare-function 'posframe-show \"deps/posframe.el\" nil t)
(let ((elint-directory-skip-re "\\(dir-locals\\|ldefs-boot\\|loaddefs\\)\\.el\\'"))
  (elint-directory ".."))
(provide 'pyim-elint)
;;; pyim-elint.el ends here
