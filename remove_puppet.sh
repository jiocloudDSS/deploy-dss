#!/bin/bash
filename=$1
count=0
while read -r p; do
 echo "Provisioning $p"
 ssh obj_team@$p "sudo sed -i '/upgrade/d' /var/spool/cron/crontabs/root" < /dev/null ;
 echo "done"
done < $filename
