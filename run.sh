#!/usr/bin/env bash

# specifications setup
function specifications_setup() {
  echo "Running specifications workshop setup..."
  ( cd workshops/specifications &&
    git checkout master &&
    git pull origin master &&
    sh ./installation/run.sh
  )
}

function all() {
  specifications_setup
}

# setup the submodules
git submodule init
git submodule update

# get argument
if [ -z "$1" ]
then
   all
else
  "$1_setup"
fi
