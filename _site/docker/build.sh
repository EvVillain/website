#!/bin/bash -ex

docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t github-jekyll .
