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
RM = rm -f
INSTALL = install

all: xwinwrap

install: xwinwrap
	$(INSTALL) -d -m 755 '$(DESTDIR)$(bindir)'
	$(INSTALL) xwinwrap '$(DESTDIR)$(bindir)'

clean:
	$(RM) xwinwrap

uninstall:
	rm -f '$(DESTDIR)$(bindir)/xwinwrap'

.PHONY: all install clean
