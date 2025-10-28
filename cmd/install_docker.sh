#!/bin/zsh

curl -fsSL https://get.docker.com/rootless | sh

export

export PATH=$HOME/bin:$PATH
export DOCKER_HOST=unix:///run/user/1072/docker.sock