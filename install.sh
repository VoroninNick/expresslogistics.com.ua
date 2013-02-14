#!/bin/sh

echo 'Using RVM ruby-1.9.3-p327 ...'
rvm use ruby-1.9.3-p327

echo 'Setting up bundle'
bundle install

echo 'Pushing data to local database'
echo 'Migration'
rake db:migrate

echo 'Dumping'
db:data:load

