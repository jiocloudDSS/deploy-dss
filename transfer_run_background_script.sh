#!/bin/bash
filename=$2
count=0
while read -r p; do
 echo "Provisioning $p"
 script=$1
 scp -i ~/.ssh/id_rsa $script obj_team@$p:~/ < /dev/null || true;
 ssh obj_team@$p " sudo nohup bash ~/$script > foo.out 2> foo.err < /dev/null &" < /dev/null || true
 echo "done"
done < $filename
