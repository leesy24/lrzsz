#!/bin/sh -x
cp -f /usr/share/misc/config.guess /usr/share/misc/config.sub .
touch stamp-h.in
touch -d yesterday aclocal.m4
rm -rf debian/tmp
rm -f build-stamp config.guess config.sub po/lrzsz.pot 'po/*.gmo' debian/files debian/rejected debian/substvars
cp -f /usr/share/misc/config.guess /usr/share/misc/config.sub .
#CC=arm-linux-gcc CXX=arm-linux-g++ ./configure --host=arm-linux --target=arm --prefix=/usr --mandir=/usr/share/man --program-transform-name=s/l//
CC=arm-linux-gcc CXX=arm-linux-g++ ./configure --host=arm-linux --target=arm --prefix=/usr --mandir=/usr/share/man --program-transform-name=s/l//
touch stamp-h.in
touch -d yesterday aclocal.m4
make

