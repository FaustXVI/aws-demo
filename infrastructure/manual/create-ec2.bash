#!/usr/bin/env bash

aws ec2 run-instances \
    --image-id ami-b8b45ddf \
    --count 1 \
    --instance-type t2.micro \
    --user-data file://install-codedeploy-agent.bash \
    --associate-public-ip-address \
    --key-name codestar \
    --iam-instance-profile "Name=CodeDeploy-EC2-Instance-Profile" \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=xadetDemo}]"
