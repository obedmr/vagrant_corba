#!/bin/bash

# Install Utilities
pacman -Syu --noconfirm git

# Install OpenJDK 8
pacman -S --noconfirm jdk8-openjdk

# Clone Java CORBA Project
cd /vagrant
git clone https://github.com/VictorRodriguez/distributed_systems.git
chown vagrant.vagrant -R distributed_systems


