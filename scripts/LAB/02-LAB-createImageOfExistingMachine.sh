#!/bin/bash
echo "Resource Group Name:"
read rGroupName
echo "Machine name:"
read machineName
templateName=02-labtemplate.json
hdPrefix=lab
azure vm deallocate -g $rGroupName -n $machineName
azure vm generalize -g $rGroupName -n $machineName
azure vm capture $rGroupName $machineName $hdPrefix -t $templateName
