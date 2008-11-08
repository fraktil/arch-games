#!/bin/bash

cd /opt/westernquake3
./ioquake3 +set com_standalone 1 +set fs_game westernq3 +set cl_curllib /usr/lib/libcurl.so $*
