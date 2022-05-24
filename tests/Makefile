# -*- Makefile -*-
SHELL = /bin/sh
EMACS ?= emacs

clean:
	@rm -rf pyim-tests-temp-*

.PHONY: deps
deps:
	@mkdir -p deps;
	@if [ ! -f deps/xr.el ]; then curl -L "https://git.savannah.gnu.org/cgit/emacs/elpa.git/plain/xr.el?h=externals/xr" > deps/xr.el; fi;
	@if [ ! -f deps/async.el ]; then curl -L "https://git.savannah.gnu.org/cgit/emacs/elpa.git/plain/async.el?h=externals/async" > deps/async.el; fi;
	@if [ ! -f deps/popup.el ]; then curl -L "https://git.savannah.gnu.org/cgit/emacs/nongnu.git/plain/popup.el?h=elpa/popup" > deps/popup.el; fi;
    ## Download pyim-basedict V0.5.0 (commit: 7495c974ada99f9fed96d8e85d8b97dabce9532c)
	@if [ ! -f deps/pyim-basedict.pyim ]; then curl -L "https://git.savannah.gnu.org/cgit/emacs/elpa.git/plain/pyim-basedict.pyim?h=externals/pyim-basedict&id=7495c974ada99f9fed96d8e85d8b97dabce9532c" > deps/pyim-basedict.pyim; fi;
	@if [ ! -f deps/pyim-basedict.el ]; then curl -L "https://git.savannah.gnu.org/cgit/emacs/elpa.git/plain/pyim-basedict.el?h=externals/pyim-basedict&id=7495c974ada99f9fed96d8e85d8b97dabce9532c" > deps/pyim-basedict.el; fi;
	@if [ ! -f deps/posframe.el ]; then curl -L "https://raw.githubusercontent.com/tumashu/posframe/master/posframe.el" > deps/posframe.el; fi;
	@if [ ! -f deps/liberime.el ]; then curl -L "https://raw.githubusercontent.com/merrickluo/liberime/master/liberime.el" > deps/liberime.el; fi;


.PHONY: test lint
lint: deps
	@$(EMACS) --batch --quick --directory .. --directory ./deps --load ./pyim-elint.el 2>&1 | grep -vE "pyim-cregexp.el:[0-9]+:Warning: Empty varlist in let|pyim-indicator.el:[0-9]+:Error: Call to undefined function: posframe-show" | grep -E "([Ee]rror|[Ww]arning):" && exit 1 || exit 0
test: lint deps clean
	@$(EMACS) --batch --quick --directory .. --directory ./deps --load ./pyim-tests.el
	@rm -rf pyim-tests-temp-*
