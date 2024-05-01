# k3s_vagrant

This project povides a simple developpment Kubernetes environnement based on K3s and Vagrant. 


## Motivation

Sometimes it is usefull to have a Kub enviomment runing localy on Vitual Machine to play with network configuration and deploiment strategie. So I build with litle simple Vangrant env. 

## Build the cluster
- Install vagrant and a VMprovider (virtual box)

- Install vagrant hostmaanger plugin : 
``` vagrant plugin install vagrant-hostmanager ```

- Edit the vagrant file to matchi your VM provider internal network

- Start vagrant
``` vagrant up ```

- Copy information from tmp/k3s.yml in your kube config and run any kubctl command.


