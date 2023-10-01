#!/bin/bash

export RAILS_ENV=production
export NODE_ENV=production

if [[ -e "$HOME/.asdf/asdf.sh" ]]; then
    . "$HOME/.asdf/asdf.sh"
fi

yarn

bin/bundle install
bin/rake db:migrate
bin/rails assets:precompile
bin/bundle exec pumactl restart
