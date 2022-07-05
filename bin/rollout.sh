#!/bin/bash
set -e

if [ -n "$RAKE_DB_MIGRATE" ]; then
    echo "Executing 'rake db:migrate' ..."
    RAILS_ENV=production bundle exec rake db:migrate
else
    echo "Skipping 'rake db:migrate' ..."
fi

if [ -n "$RAKE_EXTRA_TASKS" ]; then
    echo "Executing 'rake $RAKE_EXTRA_TASKS' ..."
    RAILS_ENV=production bundle exec rake $RAKE_EXTRA_TASKS
fi
