.PHONY: all
all: mailstat mailstat.pdf

mailstat: mailstat.py
	cp $^ $@
	chmod +x $@

mailstat.py: mailstat.py.nw
mailstat.pdf: mailstat.py.nw mailstat.bib LICENSE
mailstat.pdf: rfc.bib

.PHONY: clean
clean:
	${RM} mailstat mailstat.py mailstat.pdf mailstat.tex


PKG_NAME-main= 			mailstat
PKG_FILES-main= 		mailstat
PKG_PREFIX-main= 		/usr/local
PKG_DIR-main= 			/bin
PKG_TARBALL_FILES-main= ${PKG_FILES-main} Makefile


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/package.mk
