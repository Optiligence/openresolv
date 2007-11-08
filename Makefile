INSTALL = install 
ETCDIR = $(ROOT)/etc/resolvconf
MANDIR = $(ROOT)/usr/share/man/man8
BINDIR = $(ROOT)/sbin
VARDIR = $(ROOT)/var/run

default:

install:
	$(INSTALL) -d $(ETCDIR)/resolv.conf.d
	$(INSTALL) -d $(ETCDIR)/update.d
	$(INSTALL) -d $(ETCDIR)/update-libc.d
	$(INSTALL) -d $(MANDIR)
	$(INSTALL) -d $(BINDIR)
	$(INSTALL) -d $(VARDIR)/resolvconf
	$(INSTALL) bin/resolvconf $(BINDIR)
	$(INSTALL) update.d/libc $(ETCDIR)/update.d
	$(INSTALL) -m 644 man/resolvconf.8 $(MANDIR)
	ln -snf ../../var/run/resolvconf $(ETCDIR)/run
