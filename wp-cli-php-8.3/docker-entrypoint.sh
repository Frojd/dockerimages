#!/usr/bin/env bash

# check if the first argument passed in looks like a flag
if [ "$(printf %c "$1")" = '-' ]; then
  set -- /sbin/tini -- wp "$@"
# check if the first argument passed in is wp
elif [ "$1" = 'wp' ]; then
  set -- /sbin/tini -- "$@"
# check if the first argument passed in matches a known command
elif $(/bin/wp --allow-root cli has-command "$1"); then
  set -- /sbin/tini -- wp --allow-root "$@"
fi

exec "$@"