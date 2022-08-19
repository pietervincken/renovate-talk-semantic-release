#!/bin/bash

echo $1 > VERSION

cd kustomize
kustomize edit set image renovatetalkacr.azurecr.io/renovate-talk-semantic-release:$1
