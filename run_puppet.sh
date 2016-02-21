#!/bin/bash
filename=$1
count=0
while read -r p; do
 echo "Provisioning $p"
 ssh obj_team@$p "sudo apt-get update; sudo apt-get install puppet-dss; puppet apply --config_version='python -m jiocloud.orchestrate current_version' --detailed-exitcodes --debug /etc/puppet/manifests/site.pp;" < /dev/null;
 echo "done"
done < $filename
