#!/bin/bash
cd /opt/PlaneShift
if [ -d art ] ; then 
	./psupdater
else
	./psupdater CheckIntegrity
fi
