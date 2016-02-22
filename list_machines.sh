#!/bin/bash
#Prints all the machine list in supplied arg or all_machines.txt
if [ "$#" -ne 1 ];
then
    filename='all_machines.txt'
else
    filename=$1
fi
consul members status |  grep -v 'Address' | awk  '{print $2}'  | awk -F':' '{print $1}' | tee $filename &> /dev/null
