sudo apt -y update
# sudo apt -y upgrade
sudo apt -y install curl ufw
sudo ufw disable

export INSTALL_K3S_EXEC="--bind-address=192.168.56.110 --node-external-ip=192.168.56.110 --flannel-iface=eth1"
curl -sfL https://get.k3s.io | sh - 
sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/k3s_token.txt