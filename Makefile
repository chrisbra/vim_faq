SCRIPT=$(wildcard plugin/*.vim)
NAME="vim_faq"
FAQ=$(NAME).txt
POD=others/$(NAME).pod
DOC=$(wildcard doc/*.txt)
PLUGIN=$(shell basename "$$PWD")
VERSION=$(shell sed -n '/Version:/{s/^[^0-9]*\([0-9]\+\)$$/\1/;p}' $(SCRIPT))


.PHONY: $(PLUGIN).vba README

all: release README uninstall install 

vimball: $(PLUGIN).vba

clean:
	find . -type f \( -name "*.vba" -o -name "*.orig" -o -name "*.~*" \
	-o -name ".VimballRecord" -o -name ".*.un~" -o -name "*.sw*" -o \
	-name tags -o -name "*.tmp" \) -delete

dist-clean: clean

install:
	vim -N -c':so %' -c':q!' $(PLUGIN)-$(VERSION).vba

uninstall:
	vim -N -c':RmVimball' -c':q!' $(PLUGIN)-$(VERSION).vba

README:
	cp -f $(DOC) README

$(PLUGIN).vba:
	rm -f $(PLUGIN)-$(VERSION).vba
	vim -N -c 'ru! vimballPlugin.vim' -c ':call append("0", [ "$(SCRIPT)", "$(DOC)"])' -c '$$d' -c ":%MkVimball $(PLUGIN)-$(VERSION)  ." -c':q!'
	if [ -f $(PLUGIN)-$(VERSION).vba ]; then ln -f $(PLUGIN)-$(VERSION).vba $(PLUGIN).vba; fi
     

release:
	vim -u NONE -U NONE -N -c ':$$s/Last updated on: \zs.*$$/\=strftime("%d %B %Y")/|wq' ${FAQ}
	vim -u NONE -U NONE -N -c '/^\" GetLatestVimScripts: /s/\d\+\s\ze:AutoInstall:/\=(submatch(0)+1)." "/|wq' ${SCRIPT}
	vim -u NONE -U NONE -N -c '/^" Last Change: /s/: \zs.*$$/\=strftime("%d %B %Y")/|wq' ${SCRIPT}
	vim -u NONE -U NONE -N -c '/^" Version:/s/\d\+/\=submatch(0)+1/|wq' ${SCRIPT}
	VERSION=$(shell sed -n '/Version:/{s/^.*\(\S\?\.\?\S\+\)$$/\1/;p}' $(SCRIPT))
	vim -u NONE -U NONE -N -c ':so vim_faq.vim|:CreateVimFAQHelp|wq' ${FAQ}
	# Generate additional formats
	vim -u NONE -U NONE -N -c ':so vim_faq.vim|:CreateVimPODFile|q' ${FAQ}
	pod2man --name=vimfaq --release=${VERSION} --center='http://vimhelp.appspot.com/vim_faq.txt.html' ${POD} > others/${NAME}.1
	pod2html ${POD} > others/${NAME}.html
	pod2text -c ${POD} > others/${NAME}.ansi
	test -x /usr/bin/pod2pdf &&\
	    echo "Generating pdf version, this may take a while" &&\
	    pod2pdf --footer-text "Vim FAQ" --icon vim.png\
	    --icon-scale 0.3 --page-orientation portrait ${POD}\
	    > others/${NAME}.pdf
	rm -f *.tmp
