#!/bin/bash

##install etcd
cd /usr/local/
curl -L  https://github.com/coreos/etcd/releases/download/v2.1.0-alpha.0/etcd-v2.1.0-alpha.0-linux-amd64.tar.gz -o etcd-v2.1.0-alpha.0-linux-amd64.tar.gz
tar xzvf etcd-v2.1.0-alpha.0-linux-amd64.tar.gz
ln -s etcd-v2.1.0-alpha.0-linux-amd64 etcd
