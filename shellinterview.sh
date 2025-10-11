# The interviewer ask about daily use commands:
ls -ltr
find 
top
df 

# Write a shell script to list all the processes.
ps -ef # which show all the processes and information about it.

# question can be to print only process ID
ps -ef | awk -F" " '{print $2}'

# Write a script to print only errors from a remote log
curl https://github.com/iam-veeramalla/sandbox/tree/main/log | grep ERROR # we used here curl, pip, and grip command.

# Write a shell script to print numbers divided by 3 & 5 and not 15.

#!/bin/bash

###################
# Author: Afrasiab Khan
# Date : October 5, 2025
#
# This script outputs the numbers divided by 3 & 5 and not 15, in the range of 1...100.
#
# Version: v1
###################

# divisible by 3, divisible by 5, not 3*5=15

for i in {1..100}; do
  if { [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ]; } && [ $((i % 15)) -ne 0 ]; then
    echo $i
  fi
done

# write a script to print the number of "S" in mississippi.

#!/bin/bash

x=mississippi

grep -o "s" <<<"$x" | wc -l 

# How you will debug the shell script

set -x

# What is crontab in linux, can you provide an example?
crontab in Linux refers to both the command-line utility and the file format used to schedule tasks, known as "cron jobs," to run automatically at specific intervals or times. The cron daemon is the background process that reads these crontab files and executes the scheduled commands.

# How to open a read-only file?
vim -r test.sh     (-r specifies the read-only mode)

# What is the difference between hard and soft link.
hard link is basically work like a copy, even if the origional file is deleted, the copy still can be used. Soft link is does not work like that for instance we do have python3, and python too in the system, both of them are referencing to the same path of memory, deleting python or Python3 will delete anthing becuase they have soft link to each other.

#What is the difference between break and continuous statement?
Breaking - breaking the execution
Continuous - Continuing the execution (SKIP) -> skip this and continue the next. We will check some examples for that, search in Tutorial's point.

# What are some disadvatages of shell Scripting?
1. Errors are frequent and costly, and a single error can alter the command.
2. The executions speed is slow.
3. Bugs or inadequacies in the language syntax or implementation.
4. Large, complex tasks are not well suited to it.
5. It provides a minimal data structures as compare to other scripting languages.
6. Every time a shell command is executed, a new process is launched.

# What are different kind of loops and when to use?
Search in Tutorials point with examples.

# Is bash dynamic or statically typed and why?
Bash is dynamically typed because variable types are determined and checked during execution, not before.You never declare int, string, or float. You just assign values.
Example:

x=5
x=hello
The same variable changes from number to string without error.

# How will your sort list of names in a file?
we can use sort command.

# How will you manage logs of a system that generate huge log files everyday?
logrotate is an efficient way to manage huge logs. we can use the command logrotate (gzip, zip).
