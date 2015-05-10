#!/bin/bash

set -e
export ETCD_HOME=/usr/local/etcd
export PATH=$PATH:$ETCD_HOME/
ETCD_DISCOVERY=https://discovery.etcd.io/713f14b33c59365b3ac44c2e16f2142a
IP=`sudo ifconfig eth0 | grep -oP '(?<=addr:)[\d\.]+'`
HOSTNAME=`cat /etc/hostname`
etcd -name $HOSTNAME -initial-advertise-peer-urls http://$IP:2380 -listen-peer-urls http://$IP:2380 -discovery $ETCD_DISCOVERY
