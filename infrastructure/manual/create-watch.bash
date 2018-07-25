#!/usr/bin/env bash

aws events put-rule --name watch-git --event-pattern file://watch-git-event.json 
aws events put-targets --rule watch-git --targets file://trigger-pipeline.json
