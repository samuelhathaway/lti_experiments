#!/bin/sh

# Cron gives us a pretty meager environment
PATH=/usr/local/bin:"$PATH"; export PATH
NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript; export NODE_PATH

echo -n "Starting Canvas LMS in a screen session: canvas-lms..."
screen -d -m -S canvas-lms sh -c "cd $HOME/canvas && bundle exec rails server"
echo " done."
