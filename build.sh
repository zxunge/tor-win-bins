#!/usr/bin/bash

set -eux

HOME=$(cygpath -m /home)
NAME="tiny10 2303 x86.iso"
cd /home
wget -q https://archive.org/download/tiny-10_202301/tiny10%202303%20x86.iso

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "OUTPUT_BINARY='${HOME}/${NAME}'" >> $GITHUB_OUTPUT
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
  echo "OUTPUT_NAME=${NAME}" >> $GITHUB_OUTPUT
fi
