#!/bin/sh
echo "please enter vm name"
read vmName
echo "please enter resource group name"
read rGroupName
echo $vmName | azure group deployment create ing -f 03-LAB-createNetwork.json $rGroupName
azure network nic show $rGroupName $vmName-nic
