
# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_NO_PARALLEL'] = 'yes'
Vagrant.configure("2") do |config|
    cpu_worker = 2
    mem_worker = 2048
    base_ip_str = "192.168.56.10"
    config.vm.box = "ubuntu/jammy64"
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true

    config.vm.define "master" do |confVB|
        confVB.vm.hostname = "master"
        # Give it a fixed IP
        confVB.vm.network "private_network", ip: "#{base_ip_str}1", :netmask => "255.255.255.0"
        confVB.vm.provider "virtualbox" do |v|
            v.memory = mem_worker
            v.cpus   = cpu_worker
        end
        confVB.vm.provision "shell", path: "init/init_master.sh"
    end  

    config.vm.define "worker1" do |confVB|
        confVB.vm.hostname = "worker1"
        # Give it a fixed IP
        confVB.vm.network "private_network", ip: "#{base_ip_str}2", :netmask => "255.255.255.0"
        confVB.vm.provider "virtualbox" do |v|
            v.memory = mem_worker
            v.cpus   = cpu_worker
        end
        confVB.vm.provision "shell", path: "init/init_worker.sh"
    end  

#   config.vm.define "worker2" do |confVB|
#        confVB.vm.hostname = "worker2"
#        # Give it a fixed IP
#        confVB.vm.network "private_network", ip: "#{base_ip_str}3", :netmask => "255.255.255.0"
#        confVB.vm.provider "virtualbox" do |v|
#            v.memory = mem_worker
#            v.cpus   = cpu_worker
#        end
#        confVB.vm.provision "shell", path: "init/init_worker.sh"
#    end  

end
