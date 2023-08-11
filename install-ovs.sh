#!/bin/bash

# Setup
sudo apt install jq -y

# Install OVS
sudo apt-get update
sudo apt install openvswitch-switch

version=$(sudo ovs-vsctl --version)
echo "Open vSwitch installed $version"

# Create OVS bridge
bridge_name=ovs_cni0
sudo ovs-vsctl add-br $bridge_name
echo "$bridge_name created"


