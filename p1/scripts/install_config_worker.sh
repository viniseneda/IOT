sudo apt -y update
# sudo apt -y upgrade
sudo apt -y install curl ufw
sudo ufw disable

export K3S_TOKEN_FILE=/vagrant/k3s_token.txt
export K3S_URL=https://192.168.56.110:6443
curl -sfL https://get.k3s.io | sh -