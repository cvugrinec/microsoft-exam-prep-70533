#!/bin/sh
echo "resourceGroup"
read rGroupName
azure group deployment create -f 02-labtemplate.json $rGroupName
