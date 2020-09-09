#!/bin/sh
set -e

if [ "${1#-}" != "${1}" ]; then
  set -- fish "$@"
fi

if [ "${1}" != "fish" ]; then
  set -- fish -c "$*"
fi

exec "$@"
