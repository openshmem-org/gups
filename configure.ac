dnl
dnl Copyright (c) 2016 Cisco Systems, Inc.  All rights reserved.
dnl
dnl Process this file with autoconf to produce a configure script.

AC_PREREQ(2.57)
AC_INIT([gups-shmem], [1.0.0], [https://github.com/hppritcha/libfabric])
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(config)
AC_CONFIG_HEADERS(config.h)
AM_INIT_AUTOMAKE([1.11 dist-bzip2 foreign -Wall -Werror subdir-objects])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_CANONICAL_HOST

macos=0
linux=0
freebsd=0

case $host_os in
*darwin*)
	macos=1
	;;
*linux*)
	linux=1
	;;
*freebsd*)
	freebsd=1
	;;
*)
	AC_MSG_ERROR([libfabric only builds on Linux & OS X])
	;;
esac

AM_CONDITIONAL([MACOS], [test $macos -eq 1])
AM_CONDITIONAL([LINUX], [test $linux -eq 1])
AM_CONDITIONAL([FREEBSD], [test $freebsd -eq 1])

dnl Fix autoconf's habit of adding -g -O2 by default
AS_IF([test -z "$CFLAGS"],
      [CFLAGS='-O2 -DNDEBUG -Wall'])

# AM PROG_AR did not exist pre AM 1.11.x (where x is somewhere >0 and
# <3), but it is necessary in AM 1.12.x.
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])

AM_PROG_LIBTOOL

dnl Checks for programs
AC_PROG_CC([oshcc])
AM_PROG_CC_C_O

LT_INIT

dnl check for header files
AC_CHECK_HEADER(shmem.h, [],
    AC_MSG_ERROR([no shmem.h header found. Maybe need to set CC=oshcc?]))


AC_CONFIG_FILES([Makefile])
AC_OUTPUT
