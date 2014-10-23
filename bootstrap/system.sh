#!/bin/sh

set -e

repos='ppa:chris-lea/node.js'

packages='exim4-daemon-light
		  g++
		  git-core
		  imagemagick
		  libsqlite3-dev
		  libxml2-dev
		  libxmlsec1-dev
		  libxslt1-dev
		  make
		  nodejs
		  postgresql
		  postgresql-server-dev-all
		  ruby
		  ruby-dev
		  ruby-httpclient
		  zlib1g-dev'

for repo in $repos; do
	add-apt-repository $repo
done

aptitude update
aptitude -y upgrade
aptitude -y install $packages

npm install -g coffee-script
gem install bundler -v 1.6.0 # apparently canvas requires this version

sudo -i -u postgres createuser --superuser vagrant
