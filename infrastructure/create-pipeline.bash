#!/usr/bin/env bash

# create S3 bucket
aws codepipeline create-pipeline --pipeline file://simple-pipeline.json
