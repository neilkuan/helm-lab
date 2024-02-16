#!/usr/bin/env bash

set -xe

rm -rf charts/*

helm repo index --url "" .

git -P diff index.yaml

git add index.yaml *.tgz
git commit -a -m "release: $1"

git push origin gh-pages