#!/usr/bin/env bash

REPOSITORY_NAME="$1"

CODECOMMIT_REPOSITORY=$(aws codecommit create-repository --repository-name "$REPOSITORY_NAME")

REPOSITORY_URL=$(echo $CODECOMMIT_REPOSITORY | jq -r ".repositoryMetadata.cloneUrlHttp")

cat << EOF
To setup this new repository as origin to a newly created repository, run 
git remote add origin $REPOSITORY_URL
EOF
