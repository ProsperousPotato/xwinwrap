CFLAGS = -g -O3 -march=native -Wall -Wextra

# OpenBSD
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

CFLAGS += -I${X11INC}
CFLAGS += -L${X11LIB}
#

LDLIBS = -lX11 -lXext -lXrender

prefix = /usr/local
bindir = $(prefix)/bin

CC = cc
INSTALL = install

all: xwinwrap

xwinwrap: main.c Makefile
	$(CC) $(CFLAGS) $(LDLIBS) -o $@ main.c

install: all
	$(INSTALL) -d -m 755 '$(DESTDIR)$(bindir)'
	$(INSTALL) xwinwrap '$(DESTDIR)$(bindir)'

clean:
	rm -f xwinwrap

uninstall:
	rm -f '$(DESTDIR)$(bindir)/xwinwrap'

.PHONY: all install clean
