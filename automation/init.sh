#!/bin/bash
TOKEN=$1
export GITHUB_TOKEN=$TOKEN
export GITHUB_USER="mavrik90"
export GIT_REPO="fluxcd-play"
export GIT_BRANCH="master"
export GIT_PATH="./cluster1"

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$GIT_REPO \
  --branch=$GIT_BRANCH \
  --path=$GIT_PATH \
  --personal
