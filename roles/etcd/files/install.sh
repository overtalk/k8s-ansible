#! /bin/bash

cp bin/${1}/{etcd,etcdctl} /usr/local/bin
chmod +x /usr/local/bin/{etcd,etcdctl}

mkdir /etc/etcd/
mkdir /etc/etcd/data
cp -r ssl /etc/etcd
chmod -R 755 /etc/etcd/data
chmod -R 755 /etc/etcd/ssl

cp systemd/*.service /lib/systemd/system

systemctl daemon-reload
systemctl enable etcd
systemctl start etcd 