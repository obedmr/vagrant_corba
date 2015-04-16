#!/bin/bash

# Set hostnames
echo "10.0.0.21 server" >> /etc/hosts
echo "10.0.0.11 client1" >> /etc/hosts
echo "10.0.0.12 client2" >> /etc/hosts

# Install Utilities
pacman -Syu --noconfirm git

# Install OpenJDK 8
pacman -S --noconfirm jdk8-openjdk

# Clone Java CORBA Project
cd /vagrant
git clone https://github.com/VictorRodriguez/distributed_systems.git
chown vagrant.vagrant -R distributed_systems


