echo "Install K3S Nodes"

TOKEN=`cat /vagrant/tmp/node-token`
MASTER_IP=`getent hosts master|awk '{print $1}'`
ETH="enp0s8"
echo "TOKEN : "$TOKEN 
echo "Master IP : "$MASTER_IP
echo "Flannel eth : "$ETH

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-iface=$ETH" K3S_TOKEN=$TOKEN K3S_URL=https://$MASTER_IP:6443 sh -

echo "done"