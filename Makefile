prefix      ?= /usr/local
exec_prefix ?= $(prefix)
bindir      ?= $(exec_prefix)/bin
datarootdir ?= $(prefix)/share

RM ?= rm -f
INSTALL ?= install
INSTALL_PROGRAM ?= $(INSTALL)
INSTALL_DATA ?= $(INSTALL)

installdirs :
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(datarootdir)/zsh/site-functions

install : installdirs
	$(INSTALL_PROGRAM) magixrandr $(DESTDIR)$(bindir)
	$(INSTALL_DATA) -m644 _magixrandr $(DESTDIR)$(datarootdir)/zsh/site-functions

uninstall :
	$(RM) $(DESTDIR)$(bindir)/magixrandr
	$(RM) $(DESTDIR)$(datarootdir)/zsh/site-functions/_magixrandr

.PHONY: install installdirs uninstall
