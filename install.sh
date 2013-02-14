#!/bin/sh

echo 'Using RVM ruby-1.9.3-p327 ...'
rvm use ruby-1.9.3-p327

echo 'Setting up bundle'
bundle install

echo 'Pushing data to local database'
echo 'Migration'
rake db:migrate RAILS_ENV="production"

echo 'Dumping'
rake db:data:load RAILS_ENV="production"

