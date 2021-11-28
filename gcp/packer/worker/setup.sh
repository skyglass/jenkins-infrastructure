#!/bin/bash

echo "Install Java JDK 11"
yum remove -y java
yum install -y java-11-openjdk-devel

echo "Install Docker engine"
yum update -y
yum install docker -y
usermod -aG docker ec2-user
systemctl enable docker

echo "Install git"
yum install -y git