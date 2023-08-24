# Solution:

1. **Create a file ```clock.sh```**
```
vi clock.sh
```
2. **Declare colour variables consisting ANSI colour codes.**
```
red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
white=$'\e[1;37m'
```
[NOTE] 
- \e is for bold
- [1; is for the cursor placement in row 1
- 31m is the ansi code for red
  
3. **Run an infinite while loop to do the following:**
- Clear screen.
- Print the current time in hh:mm:ss format in the colour of your choice.
- Make the cursor sleep for 1s.

The simple way to get this done on the linux terminal without using shell scripting is as follows:
```
clear; echo $(date +%T); sleep 1s; clear; echo $(date +%T); sleep 1s;clear; echo $(date +%T); sleep 1s;
```
We will build out code with reference to above line.
```
while true
do
  clear
  echo $red $(date +%T)
  sleep 1s
done
```
