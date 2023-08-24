#!/bin/bash
# \e is for bold
# [1; is for the cursor placement in row 1
# 31m is the ansi code for red

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
white=$'\e[1;37m'

while true
do
  clear
  echo $red $(date +%T)
  sleep 1s
done
