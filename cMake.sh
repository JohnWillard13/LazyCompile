#!/bin/bash

#Runs and checks to see if failure when compiling
if [ 'make | grep -q error' == *'error'* ];
then
	clear;
	"make" | tail -n "+2";
else
	clear;
	"make";
	clear;
	"./main";
fi
