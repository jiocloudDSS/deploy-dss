#!/bin/bash
sudo /etc/init.d/ceph stop mon; 
sudo /etc/init.d/radosgw stop; 
sudo rm -rf /var/lib/ceph/*; 
sudo rm -rf /etc/ceph/*;  
sudo rm -rf /etc/facter/facts.d/consul.txt; 
sudo apt-get remove -y --force-yes ceph-common ceph-fs-common ceph-fuse ceph-mds ceph-test ceph libcephfs libcephfs-java libcephfs-jni libcephfs1 librados2 libradosstriper-dev libradosstriper1  librbd-dev librbd1 python-ceph python-cephfs python-rados python-rbd radosgw rbd-fuse rest-bench puppet-dss consul;
