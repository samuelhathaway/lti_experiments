#!/bin/sh

set -e

configs='amazon_s3
         database
         delayed_jobs
         domain
         file_store
         outgoing_mail
         security
         external_migration'

git clone https://github.com/instructure/canvas-lms.git canvas
cd canvas
bundle install --without mysql
for config in $configs; do
	cp -v config/$config.yml.example config/$config.yml
done
createdb canvas_development
createdb canvas_queue_development
env CANVAS_LMS_ADMIN_EMAIL="$1" CANVAS_LMS_ADMIN_PASSWORD="$2" \
	CANVAS_LMS_STATS_COLLECTION="$3" CANVAS_LMS_ACCOUNT_NAME="$4" \
	bundle exec rake db:initial_setup
npm install
bundle exec rake canvas:compile_assets
ln -s /vagrant/bootstrap/screenrc ~/.screenrc
crontab /vagrant/bootstrap/crontab
