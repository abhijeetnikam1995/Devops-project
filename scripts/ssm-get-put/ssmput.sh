#!/bin/bash
LINECOUNTER=1
while true; do
    PARAMNAME="$(sed -n "${LINECOUNTER}p" params-list.txt)"
    PARAMVALUE="$(sed -n "${LINECOUNTER}p" values-list.txt)"
    echo "$PARAMNAME and $PARAMVALUE"
    aws ssm put-parameter \
    --name "$PARAMNAME" \
    --type "SecureString" \
    --value "$PARAMVALUE" \
    --region ap-south-1 
    let LINECOUNTER=LINECOUNTER+1
done
