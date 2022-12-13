#!/bin/bash
for SVC in bms;
do 
    NC_$SVC_WRITE_DB_HOST=$(aws ssm get-parameter --name /dev1/db/$(echo $SVC | tr [:upper:] [:lower:])/configs/host/w |  jq -r '.Parameter.Value')
    NC_$SVC_WRITE_DB_PASSWORD=$(aws ssm get-parameter --name /dev1/db/$(echo $SVC | tr [:upper:] [:lower:])/secrets/pass/s --with-decryption | jq -r '.Parameter.Value' | base64 -d) ; 

echo "export NC_$SVC_WRITE_DB_PASSWORD=$NC_$SVC_WRITE_DB_HOST" > env
echo "export NC_$SVC_WRITE_DB_PASSWORD=$NC_$SVC_WRITE_DB_PASSWORD" >> env
done
