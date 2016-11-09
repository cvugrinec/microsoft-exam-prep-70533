#!/bin/sh
echo "new network name:"
read networkName
echo "resourceGroup name:"
read rGroupName
echo $networkName | azure group deployment create $rGroupName -f 06-networkTemplate.json
