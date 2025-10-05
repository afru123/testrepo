#!/bin/bash

###################
# Author: Afrasiab Khan
# Date : October 5, 2025
#
# This script outputs the nodes health
#
# Version: v1
###################

set -x # Debug mode
set -e # exit the script when there is an error found.
set -o pipefail 

# the reason we used set -o pipefail is because the set -e is passed by the pipe '|' in line of code.
# we can use the above three commands in online too i.e set -xeo but it is not recommended.
df -h

free -g

nproc

ps -ef | grep "amazon"   # grep command is used to filter specific word/words.

# | sending the output of first command to the second one.
# The only case | do not provide the output to the second comman is when the first command is "stdin". For example date | echo 'The time is', here the date command will not execute becuse it is standard input command

ps -ef | grep "amazon" awk -F" " '{print $2}'   # this awk command is helping in pulling out the specific column, here we got info of 2nd column.



