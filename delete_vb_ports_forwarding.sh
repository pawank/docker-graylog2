#!/bin/bash

PORTS=(9200,8080,27017,28017,9000,5432,25432,22221,22222,33333,3306,80)

for i in "${filecontent[@]}"
do
  VBoxManage modifyvm "boot2docker-vm" --natpf1 delete "tcp-port$i"; 
  VBoxManage modifyvm "boot2docker-vm" --natpf1 delete "udp-port$i"; 
done
