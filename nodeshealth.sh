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

df -h


free -g


nproc

ps -ef | grep "amazon"   # grep command is used to filter specific word/words.
