#!/bin/bash

echo "Install Java JDK 8"
yum remove -y java
yum install -y java-11-openjdk-devel

echo "Install Docker engine"
yum update -y
yum install docker -y
usermod -aG docker ec2-user
reboot
systemctl unmask docker.service
systemctl unmask docker.socket
systemctl start docker.service
systemctl enable docker

echo "Install git"
yum install -y git