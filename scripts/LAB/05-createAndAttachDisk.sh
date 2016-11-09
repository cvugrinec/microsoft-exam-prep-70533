#!/bin/sh
echo "vm name:"
read vmName
echo "resourceGroup name:"
read rGroupName
echo "size in GB:"
read size
azure vm deallocate -g $rGroupName -n $vmName
azure vm disk attach-new $rGroupName $vmName $size
