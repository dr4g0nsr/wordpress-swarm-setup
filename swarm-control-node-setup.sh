#!/bin/bash

apt install -y nfs-server nfs-common docker.io

docker swarm init
apt update

mkdir /nfs/{db,wordpress}
cp exports /etc/exports

systemctl nfs-server restart
systemctl enable nfs-server
