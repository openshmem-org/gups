#! /bin/sh

if test ! -d .git; then
    echo You really need to run this script in the top-level directory
    exit 1
fi

set -x

if test ! -d config; then
    mkdir config
fi

autoreconf -ivf
