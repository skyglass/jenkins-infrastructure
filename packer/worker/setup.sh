#!/bin/bash

echo "Installing Amazon Linux extras"
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y

echo "Install Java JDK 8"
yum remove -y java
yum install -y java-11-openjdk-devel

echo "Install Docker engine"
yum update -y
yum install docker -y
usermod -aG docker ec2-user
systemctl enable docker

echo "Install git"
yum install -y git