#!/bin/sh
cd "/opt/quake3"
export LD_PRELOAD="et-sdl-sound.so ${LD_PRELOAD}"
[ -x ./quake3.x86 ] && exec ./quake3.x86 $*
[ -x ./IOQ3_BINARY] && exec ./IOQ3_BINARY $*
