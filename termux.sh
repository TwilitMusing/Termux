#!/bin/bash

## Preload if executable fails
### export LD_PRELOAD=${PREFIX}/lib/libtermux-exec.so

pkg install clang ecj python ruby ruby-dev
pkg install emacs micro proot radare2
pkg install libffi-dev libgmp-dev libgrpc-dev libpcap-dev libsodium-dev libsqlite-dev libtool libxml2-dev libxslt-dev
pip install ipython nodejs
pkg install apr apr-util autoconf automake bison bzip2 cmake coreutils curl diffutils findutils flex gawk git grep gzip libtool make patch perl pkg-config sed silversearcher-ag tar wget
pkg install ncurses ncurses-dev ncurses-utils openssl-dev postgresql-dev termux-exec termux-tools
pkg upgrade
pip install --upgrade pip

# Implementation of postgre
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql

## pg_ctl -D $PREFIX/var/lib/postgresql start
## pg_ctl stop

# Implementation of otherwise unavailable python modules within termux, and extras
$PREFIX/bin/wget https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
pkg install scipy numpy

termux-setup-storage
