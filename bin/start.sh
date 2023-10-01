#!/bin/bash

export RAILS_ENV=production

bundle exec puma -v -b "tcp://127.0.0.1:3077"
