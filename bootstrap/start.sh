#!/bin/sh

# Cron gives us a pretty meager environment
PATH=/usr/local/bin:"$PATH"; export PATH
NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript; export NODE_PATH

echo -n "Staring Canvas LMS: "
screen -S canvas -dm -t lms sh -c "cd $HOME/canvas && bundle exec rails server"
echo " done."

echo -n "Starting Canvas background job processor: "
screen -S canvas -X screen -t jobs sh -c "cd $HOME/canvas && bundle exec script/delayed_job run"
echo " done."
