#!/bin/bash

GRP="$(xset q | grep 'Group 2' |  awk '{ print $4 }')"
L1="$(setxkbmap -query | grep layout | awk '{print $2}' | cut -d, -f1)"
L2="$(setxkbmap -query | grep layout | awk '{print $2}' | cut -d, -f2)"

if [ "$GRP" == "off" ]
then
    echo $L1
else
    echo $L2
fi
