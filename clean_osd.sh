#!/bin/bash
ps -ef | grep osd | awk {'print $2'} | xargs kill -9 ;
sudo /etc/init.d/ceph stop osd; 
sudo rm -rf /var/lib/ceph/osd/ceph-*/*  ;
sudo rm -rf /etc/facter/facts.d/consul.txt; 
sudo apt-get remove -y --force-yes puppet-dss consul;
apt-get remove -y --force-yes --purge ceph-common ceph-fs-common ceph-fuse ceph-mds ceph-test ceph libcephfs libcephfs-java libcephfs-jni libcephfs1 librados2 libradosstriper-dev libradosstriper1  librbd-dev librbd1 python-ceph python-cephfs python-rados python-rbd radosgw rbd-fuse rest-bench
sudo rm -rf /var/lib/ceph;
for i in {b..x}; do 
	sudo /etc/init.d/ceph stop osd; echo 'beinge echoed $i'; sudo umount /dev/sd${i}1; sudo parted -s /dev/sd${i} rm 1; done
