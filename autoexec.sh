#!/bin/bash
set -e

if [ "$1" = 'web' ]; then
    exec rq-dashboard -p $PORT --redis-host $REDIS_HOST --redis-port $REDIS_PORT -D 1
fi

exec "$@"
