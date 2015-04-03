#!/bin/bash

# Install Utilities
pacman -Syu --noconfirm git

# Install OpenJDK 8
pacman -S --noconfirm jdk8-openjdk

# Clone Java CORBA Project
#cd /vagrant
#git clone https://github.com/VictorRodriguez/distributed_systems.git
#chown vagrant.vagrant -R distributed_systems
#cd distributed_systems/src

# Compile Server
#javac -d ./ example/hello/*.java

# Starting RMI Registry
#rmiregistry &

# Starting Server
#java -cp ./ -Djava.rmi.server.codebase=file:./ -Djava.rmi.server.hostname=10.0.0.10 example.hello.Server &
