#!/bin/bash
filename=$1
count=0
while read -r p; do
 echo "Provisioning $p"
 ssh obj_team@$p " sudo nohup puppet apply --config_version='python -m jiocloud.orchestrate current_version' --detailed-exitcodes --debug /etc/puppet/manifests/site.pp > foo.out 2> foo.err < /dev/null &" < /dev/null || true;
 echo "done"
done < $filename
