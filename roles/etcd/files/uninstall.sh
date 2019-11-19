#! /bin/bash

rm -f /usr/local/bin/etcd /usr/local/bin/etcdctl
rm -rf /etc/etcd

if [ -f "/lib/systemd/system/etcd.service" ]; then
    systemctl disable etcd
    systemctl stop etcd
    rm -f /lib/systemd/system/etcd.service
fi
systemctl daemon-reload
