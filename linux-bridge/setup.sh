#!/bin/bash

# Setup
sudo apt install jq -y
sudo apt install bridge-utils -y
sudo apt install net-tools -y
sudo apt install traceroute -y
sudo mkdir -p /etc/cni/net.d/
