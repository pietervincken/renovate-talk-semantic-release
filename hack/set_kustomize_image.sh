#!/bin/bash

cd kustomize
kustomize edit set image renovatetalkacr.azurecr.io/renovate-talk-semantic-release:$1