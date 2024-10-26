#!/usr/bin/bash

set -eux

HOME=$(cygpath -m /home)
NAME=tor-browser-windows-i686-portable-14.0.exe
cd /home
wget -q https://dist.torproject.org/torbrowser/14.0/tor-browser-windows-i686-portable-14.0.exe

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "OUTPUT_BINARY=${HOME}/${NAME}" >> $GITHUB_OUTPUT
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
  echo "OUTPUT_NAME=${NAME}" >> $GITHUB_OUTPUT
fi
