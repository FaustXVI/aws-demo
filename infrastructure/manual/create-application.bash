#!/usr/bin/env bash

aws deploy create-application --application-name xadet-demo
aws deploy create-deployment-group \
    --application-name xadet-demo \
    --deployment-group-name demos \
    --ec2-tag-filters "Key=Name,Value=xadetDemo,Type=KEY_AND_VALUE" \
    --service-role-arn "arn:aws:iam::932646752340:role/CodeDeploy-EC2-Instance-Profile" 
