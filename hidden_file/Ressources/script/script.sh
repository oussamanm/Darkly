#!/bin/bash
mkdir ./garbage
wget --mirror -A  README -P ./garbage -e robots=off $1/.hidden/
find ./garbage -name README | xargs grep [0-9]
rm -rf ./garbage
