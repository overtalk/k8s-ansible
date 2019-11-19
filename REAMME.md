# ETCD
- 查看 etcd 成员
```bash
ETCDCTL_API=3 && etcdctl --endpoints=https://192.168.189.148:2379,https://192.168.189.147:2379,https://192.168.189.149:2379 --ca-file=/etc/etcd/ssl/ca.pem --cert-file=/etc/etcd/ssl/server.pem --key-file=/etc/etcd/ssl/server-key.pem member list
```

- 查看 etcd 健康状态
```bash
ETCDCTL_API=3 && etcdctl --endpoints=https://192.168.189.148:2379,https://192.168.189.147:2379,https://192.168.189.149:2379 --ca-file=/etc/etcd/ssl/ca.pem --cert-file=/etc/etcd/ssl/server.pem --key-file=/etc/etcd/ssl/server-key.pem cluster-health
```