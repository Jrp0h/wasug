PROGRAMNAME = wasug
MANNAME = $(PROGRAMNAME).1
PREFIX = /usr/local
INSTALLPATH = $(PREFIX)/bin
MANPATH = $(PREFIX)/share/man

all:
	@echo "Run make install or make uninstall with root privileges to install or uninstall, respectively"

install:
	rm -f $(INSTALLPATH)/$(PROGRAMNAME)
	cp $(PROGRAMNAME) $(INSTALLPATH)/
	chmod 755 $(INSTALLPATH)/$(PROGRAMNAME)

	rm -f $(MANPATH)/man1/$(MANNAME)
	cp $(MANNAME) $(MANPATH)/man1/$(MANNAME)
	chmod 644 $(MANPATH)/man1/$(MANNAME)

uninstall:
	rm -f $(INSTALLPATH)/$(PROGRAMNAME)

	rm -f $(MANPATH)/man1/$(MANNAME)

.PHONY: all install uninstall