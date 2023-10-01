#!/bin/bash

export RAILS_ENV=production

if [[ -e "$HOME/.asdf/asdf.sh" ]]; then
    . "$HOME/.asdf/asdf.sh"
fi

bundle exec puma -v -b "tcp://127.0.0.1:3077"
