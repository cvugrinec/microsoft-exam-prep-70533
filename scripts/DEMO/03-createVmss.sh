#!/bin/sh
echo "enter resource group"
read rGroup
azure group deployment create $rGroup -f 03-deployVmss.json
