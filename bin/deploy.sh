#!/bin/bash

export REPO=git@github.com:NatTuck/jokes-rails.git

if [[ ! -d "jokes-rails" ]]; then
    git clone $REPO
fi 

cd jokes-rails
git pull

if [[ ! -e "config/master.key" ]]; then
    cp ~/master.key config/master.key
fi

bin/build.sh
