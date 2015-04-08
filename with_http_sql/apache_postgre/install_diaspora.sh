#!/bin/bash

cd diaspora

RAILS_ENV=production  DB=postgres  bundle install --without test development
RAILS_ENV=production  DB=postgres  bundle exec rake db:create db:schema:load
DB=postgres bundle exec rake assets:precompile
