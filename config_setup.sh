#!/bin/bash -l
swapoff -a
sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get update
sudo apt-get install -y apt-transport-https curl
sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update 
sudo apt-get install -y kubelet kubeadm kubectl --allow-unauthenticated
kubeadm join $1 --token $2 --discovery-token-ca-cert-hash $3

