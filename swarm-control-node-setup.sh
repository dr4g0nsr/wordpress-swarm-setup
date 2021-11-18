#!/bin/bash

apt install -y nfs-kernel-server nfs-common docker.io

docker swarm init
apt update

mkdir /nfs
mkdir /nfs/{db,wordpress}

cp exports /etc/exports

systemctl restart nfs-server
systemctl enable nfs-server

echo "" > /nfs/db/_empty_file
echo "" > /nfs/wordpress/_empty_file

chown nobody:nogroup /nfs
chown nobody:nogroup /nfs/* -R
