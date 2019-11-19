#! /bin/bash

cfssl gencert -initca ca-csr.json | cfssljson -bare ca -
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=www server-csr.json | cfssljson -bare server

rm -f ../ssl/*.pem
cp *.pem ../ssl/
rm -rf ./*.pem
rm -rf ./*.csr