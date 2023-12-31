#!/bin/bash

# Setup
sudo apt install jq -y
sudo apt install bridge-utils -y
sudo apt install net-tools -y
sudo apt install traceroute -y
sudo mkdir -p /etc/cni/net.d/

# Install OVS
sudo apt-get update
sudo apt install openvswitch-switch -y

version=$(sudo ovs-vsctl --version)
echo "Open vSwitch installed $version"

# Create OVS bridge
bridge_name=ovs_cni0
sudo ovs-vsctl add-br $bridge_name
echo "$bridge_name created"

# Setup OVS bridge
sudo ifconfig ovs_cni0 10.244.0.1 subnet 255.255.0.0
