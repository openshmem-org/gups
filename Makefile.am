configdir = $(datarootdir)/${PACKAGE_NAME}
AM_CFLAGS = -g -Wall -D_GNU_SOURCE -D 'CONFIG_PATH="${configdir}"' -I$(srcdir)/include
ACLOCAL_AMFLAGS = -I config

bin_PROGRAMS = \
	gups

gups_SOURCES = \
	RandomAccess.c \
	SHMEMRandomAccess.c \
	verification.c
