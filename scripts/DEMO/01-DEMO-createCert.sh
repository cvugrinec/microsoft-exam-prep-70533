#!/bin/sh
#=========================================
#
#       file:   01-DEMO-createCert.txt
#       author: chvugrin@microsoft.com
#       description:
#                You will create a certificate, for automatic login...
#                This is intended to show how automation is possible
#
#=========================================
if [[ -f x1 ]]
then
  rm x1 x3 privkey.pem  cert*
fi
#azure login
echo "your app name"
read app
openssl req -x509 -days 3650 -newkey rsa:2048 -out cert.pem -nodes -subj "/CN=$app"
sed '1d' cert.pem >cert.pem.modified
sed -i '$d' cert.pem.modified
cat privkey.pem cert.pem > certificate.pem
cert=$(cat cert.pem.modified)
echo "please do this manually:"
#echo "azure ad app create -n $app --home-page http://$app --identifier-uris https://$app/id --cert-value CERT >x1"
azure ad sp create -n $app --cert-value "$cert" >x1
#echo "waarbij CERT is...zonder BEGIN en END CERTIFICATE"
#echo $cert
exit 0
