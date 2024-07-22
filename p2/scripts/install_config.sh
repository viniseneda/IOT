sudo apt -y update
# sudo apt -y upgrade
sudo apt -y install curl ufw
sudo ufw disable

curl -sfL https://get.k3s.io | sh - 
sleep 20
sudo kubectl apply -f confs/app1.yaml
sudo kubectl apply -f confs/app2.yaml
sudo kubectl apply -f confs/app3.yaml