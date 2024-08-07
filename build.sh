#!/usr/bin/bash

set -eux

HOME=$(cygpath -m /home)
NAME=tor-browser-android-armv7-13.5.2.apk
cd /home
wget -q https://dist.torproject.org/torbrowser/13.5.2/tor-browser-android-armv7-13.5.2.apk

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "OUTPUT_BINARY=${HOME}/${NAME}" >> $GITHUB_OUTPUT
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
  echo "OUTPUT_NAME=${NAME}" >> $GITHUB_OUTPUT
fi
