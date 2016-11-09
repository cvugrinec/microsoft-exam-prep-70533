#!/bin/sh
#=========================================
#
#       file:   02-DEMO-createCert.sh.
#       author: chvugrin@microsoft.com
#       description:
#                You will create a certificate, for automatic login...
#                This is intended to show how automation is possible
#
#=========================================

if [ "$#" -ne 1 ]; then
  echo "please provide app as parameter"
  exit 1
fi

app=$1
tenantId=$(azure account show | grep Tenant | sed 's/^.*[: ]//g')
subscription=$(azure account show | grep ID | grep -v Tenant | sed 's/^.*[: ]//')

#appId=$(cat x1 | grep AppId | sed 's/^.*[:\t]//g' | sed 's/^.*[ ]//')
#azure ad sp create -n $app $appId > x2
# Appearantly we need some more time link
#echo "waiting 10 seconds"
#sleep 10
objectId=$(cat x1 | grep Object | sed 's/^.*[:]//' | sed 's/^.*[ ]//')
azure role assignment create --objectId $objectId -o Contributor -c /subscriptions/$subscription/
azure ad sp show -c $app >x3
newObjectId=$(cat x3 | grep "Service Principal Names" -A 2 | tail -1 | sed 's/^.*[ ]//' )
#cleanup
rm x1  x3  privkey.pem
thumbprint=$(openssl x509 -in certificate.pem -fingerprint -noout | sed 's/SHA1 Fingerprint=//g'  | sed 's/://g')
echo "Now you can use the following command to automatically login via a script:"
echo "azure login --service-principal --tenant $tenantId -u $newObjectId --certificate-file certificate.pem --thumbprint $thumbprint"
