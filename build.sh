#!/usr/bin/bash

set -eux

HOME=$(cygpath -m /home)
NAME="tiny10 x64 beta 2.iso"
cd /home
wget -q https://archive.org/download/tiny-10_202301/tiny10%20x64%20beta%202.iso

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "OUTPUT_BINARY='${HOME}/${NAME}'" >> $GITHUB_OUTPUT
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
  echo "OUTPUT_NAME=${NAME}" >> $GITHUB_OUTPUT
fi
