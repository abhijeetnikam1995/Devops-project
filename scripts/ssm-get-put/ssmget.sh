#!/bin/bash
#$1 would be the path to get params from ssm 
for i in $1
do
aws ssm get-parameters-by-path --path $i --with-decryption --region ap-south-1 |  jq '.Parameters[] | .Name + "=" + .Value' | cut -d '/' -f3 | sed 's/"//g' >> /home/gitlab-runner/.env
cat /home/gitlab-runner/awsparams.txt >> /home/gitlab-runner/.env
cp /home/gitlab-runner/.env .
done
rm -rf /home/gitlab-runner/.env
