echo "Install K3s Control Plane"

MASTER_IP=`getent hosts master|grep '192' |awk '{print $1}'`
ETH="enp0s8"
echo "Master IP : "$MASTER_IP
echo "Flannel eth : "$ETH

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--bind-address=$MASTER_IP --node-external-ip=$MASTER_IP --flannel-iface=$ETH" sh - 

mkdir -p /vagrant/tmp
cp /var/lib/rancher/k3s/server/node-token /vagrant/tmp/node-token
cp /etc/rancher/k3s/k3s.yaml /vagrant/tmp/k3s.yaml

sed -i "s/127.0.0.1/$MASTER_IP/g" /vagrant/tmp/k3s.yaml

echo "done"
