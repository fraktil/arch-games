#!/bin/sh

[ -f /etc/tremdedrc ] && . /etc/tremdedrc
[ -f "$HOME/.tremdedrc" ] && . "$HOME/.tremdedrc"

cd /opt/tremulous/bin
./tremded "$TREM_ARGS" "$@"
