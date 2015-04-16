#!/bin/bash

# Set hostnames
echo "10.0.0.21 server" >> /etc/hosts
echo "10.0.0.11 client1" >> /etc/hosts
echo "10.0.0.12 client2" >> /etc/hosts

# Install Utilities
pacman -Syu --noconfirm git

# Install OpenJDK 8
pacman -S --noconfirm jdk8-openjdk

# Compile Server
#javac -d ./ example/hello/*.java

# Contacting the Server 10 times
#for i in `seq 1 10`;
#do
#    java -cp ./ example.hello.Client 10.0.0.10
#done
