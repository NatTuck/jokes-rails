#!/bin/bash

export RAILS_ENV=production
export NODE_ENV=production

yarn

bin/bundle install
bin/rake db:migrate
bin/rails assets:precompile
bin/bundle exec pumactl restart
