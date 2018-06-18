sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get update
sudo apt-get install -y apt-transport-https curl
sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update 
sudo apt-get install -y kubelet kubeadm kubectl --allow-unauthenticated
wget http://download.nextag.com/apache/hadoop/common/hadoop-3.1.0/hadoop-3.1.0.tar.gz
tar -xvzf hadoop-3.1.0.tar.gz /usr/local/hadoop 