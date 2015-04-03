# -*- mode: ruby -*-
# vi: set ft=ruby :
 
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "obedmr/archlinux"
 
  # CORBA Server
  config.vm.define "server" do |server_config|
    server_config.vm.hostname = "server"
    server_config.vm.provision "shell", path: "scripts/server.sh" 
    server_config.vm.network "private_network", ip: "10.0.0.21"
    server_config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
    end
  end
  # End Server

  # CORBA Clients 
  # Client 1
  config.vm.define "client1" do |client_config|
    client_config.vm.hostname = "client1"
    client_config.vm.provision "shell", path: "scripts/client.sh"
    client_config.vm.network "private_network", ip: "10.0.0.11"
  end

  # Client 2
  config.vm.define "client2" do |client_config|
    client_config.vm.hostname = "client2"
    client_config.vm.provision "shell", path: "scripts/client.sh"
    client_config.vm.network "private_network", ip: "10.0.0.12"
  end
  # End CORBA Clients
end
