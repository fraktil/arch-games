#!/bin/bash
unset WINEPREFIX

if [ ! -d "$HOME"/.generally ] ; then
    echo Files not found, execute GeneRally once.
    exit 1
fi

cd "$HOME"/.generally
wine ./TrackEditor $* &>/dev/null
cd - &>/dev/null

exit 0

