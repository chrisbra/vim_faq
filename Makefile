SCRIPT=$(wildcard plugin/*.vim)
NAME="vim_faq"
FAQ=$(NAME).txt
POD=others/$(NAME).pod
DOC=$(wildcard doc/*.txt)
PLUGIN=$(shell basename "$$PWD")
VERSION=$(shell sed -n '/Version:/{s/^[^0-9]*\([0-9]\+\)$$/\1/;p}' $(SCRIPT))
# generate pdf file
DOPDF=1


.PHONY: $(PLUGIN).vmb README
.PHONY: all release vimball clean dist-clean install uninstall help updateheader docs

all: updateheader help vimball uninstall install 

release: updateheader help docs README vimball uninstall install

vimball: $(PLUGIN).vmb

clean:
	find . -type f \( -name "*.vba" -o -name "*.orig" -o -name "*.~*" \
	-o -name ".VimballRecord" -o -name ".*.un~" -o -name "*.sw*" -o \
	-name tags -o -name "*.tmp" -o -name "*.vmb" \) -delete

dist-clean: clean

install:
	vim -N -c':so %' -c':q!' $(PLUGIN)-$(VERSION).vmb

uninstall:
	vim -N -c':RmVimball' -c':q!' $(PLUGIN)-$(VERSION).vmb

README:
	cp -f $(DOC) README

$(PLUGIN).vmb:
	rm -f $(PLUGIN)-$(VERSION).vmb
	vim -N -c 'ru! vimballPlugin.vim' -c ':call append("0", [ "$(SCRIPT)", "$(DOC)"])' -c '$$d' -c ":%MkVimball $(PLUGIN)-$(VERSION)  ." -c':q!'
	if [ -f $(PLUGIN)-$(VERSION).vmb ]; then ln -f $(PLUGIN)-$(VERSION).vmb $(PLUGIN).vmb; fi
     

help:
	vim -u NONE -U NONE -N -c ':so vim_faq.vim|:CreateVimFAQHelp|wq' ${FAQ}

updateheader:
	vim -u NONE -U NONE -N -c '/^Last updated on: /s/: \zs.*$$/\=strftime("%d %B %Y")/|wq' ${FAQ}
	vim -u NONE -U NONE -N -c '/^" Last Change: /s/: \zs.*$$/\=strftime("%d %B %Y")/|wq' ${SCRIPT}
	vim -u NONE -U NONE -N -c '/^" Version:/s/\d\+/\=submatch(0)+1/|wq' ${SCRIPT}

docs:
	vim -u NONE -U NONE -N -c ':$$s/Last updated on: \zs.*$$/\=strftime("%d %B %Y")/|wq' ${FAQ}
	vim -u NONE -U NONE -N -c '/^\" GetLatestVimScripts: /s/\d\+\s\ze:AutoInstall:/\=(submatch(0)+1)." "/|wq' ${SCRIPT}
	VERSION=$(shell sed -n '/Version:/{s/^.*\(\S\?\.\?\S\+\)$$/\1/;p}' $(SCRIPT))
	# Generate additional formats
	vim -u NONE -U NONE -N -c ':so vim_faq.vim|:CreateVimPODFile|q' ${FAQ}
	pod2man --name=vimfaq --release=${VERSION} --center='https://vimhelp.org/vim_faq.txt.html' ${POD} > others/${NAME}.1
	pod2html --verbose --title="Vim FAQ" ${POD} > others/${NAME}.html
	pod2text -c ${POD} > others/${NAME}.ansi
	@/bin/sh -c "if test -x \"$$(which pod2pdf)\" && test ${DOPDF} -eq 1 ;\
	    then echo 'Generating pdf version, this may take a while'; \
	    pod2pdf --footer-text 'Vim FAQ' --icon vim.png \
	    --icon-scale 0.3 --page-orientation portrait ${POD}\
	    > others/${NAME}.pdf ; \
	else \
	    echo 'Skipping pdf generation' ; \
	fi"
	rm -f *.tmp
