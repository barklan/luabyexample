#!/usr/bin/env bash

set -eo pipefail

DC="${DC:-exec}"

# If we're running in CI we need to disable TTY allocation for docker-compose
# commands that enable it by default, such as exec and run.
TTY=""
if [[ ! -t 1 ]]; then
    TTY="-T"
fi

function _dc {
    export DOCKER_BUILDKIT=1
    docker-compose ${TTY} "${@}"
}

function _use_env {
    set -o allexport; . .env; set +o allexport
}

up() (
    hugo server --minify -D
)

function help {
    printf "%s <task> [args]\n\nTasks:\n" "${0}"

    compgen -A function | grep -v "^_" | cat -n
}

TIMEFORMAT=$'\nTask completed in %3lR'
time "${@:-help}"
