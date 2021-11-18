#!/bin/bash

docker swarm init
apt update
apt install -y nfs-server nfs-common

mkdir /nfs/{db,wordpress}

cp exports /etc/exports

systemctl nfs-server restart
systemctl enable nfs-server
