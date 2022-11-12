#!/bin/bash

echo "[TASK 1] Join node to Kubernetes Cluster"
sudo yum install -y sshpass >/dev/null 2>&1
sudo sshpass -p "kubeadmin" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no apiserver.endpoint:/root/joincluster.sh /root/joincluster.sh 2>/dev/null
sudo bash /root/joincluster.sh >/dev/null 2>&1
