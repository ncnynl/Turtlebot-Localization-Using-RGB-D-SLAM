#!/bin/bash 

#### Get Input ####


if [ $1 ] && [ $2 ]; then	
    roslaunch rgbdslam rgbdslam+record.launch duration:=$2 bagfile:=$1 
elif [ $1 ]; then
    roslaunch rgbdslam rgbdslam+record.launch duration:=60m bagfile:=$1
else 
    printf "===================================================================\n"
    printf "Usage: ./launch_rgbdslam.sh bagfile duration\n" 
    printf "  bagfile: path/file_name\n"
    printf "           bagfile is created in home directory if no path is given\n"
    printf "  duration: 10 -> 10 seconds\n" 
    printf "            2m -> 2 minutes\n" 
    printf "===================================================================\n"
fi
