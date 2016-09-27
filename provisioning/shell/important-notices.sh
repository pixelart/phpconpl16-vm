#!/bin/bash

VAGRANT_CORE_FOLDER=$(cat '/.ansible-stuff/vagrant-core-folder.txt')

if [[ -f '/.ansible-stuff/displayed-important-notices' ]]; then
    exit 0
fi

cat "${VAGRANT_CORE_FOLDER}/shell/ascii-art/important-notices.txt"

touch '/.ansible-stuff/displayed-important-notices'
