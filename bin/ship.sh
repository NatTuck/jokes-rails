#!/bin/bash

export HOST=goblin.homework.quest
export USER=jokes-rails

if [[ ! -e "Gemfile" ]]; then
    echo "Wrong directory"
    exit 1
fi

scp bin/deploy.sh $USER@$HOST:~
scp config/master.key $USER@$HOST:~
ssh $USER@$HOST bash "~/deploy.sh"

