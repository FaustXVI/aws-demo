#!/usr/bin/env bash
aws iam create-role --role-name CodeDeploy-EC2-Instance-Profile --assume-role-policy-document file://codedeploy-ec2-trust.json
aws iam put-role-policy --role-name CodeDeploy-EC2-Instance-Profile --policy-name CodeDeploy-EC2-Permissions --policy-document file://codedeploy-ec2-permissions.json
aws iam create-instance-profile --instance-profile-name CodeDeploy-EC2-Instance-Profile
aws iam add-role-to-instance-profile --instance-profile-name CodeDeploy-EC2-Instance-Profile --role-name CodeDeploy-EC2-Instance-Profile
