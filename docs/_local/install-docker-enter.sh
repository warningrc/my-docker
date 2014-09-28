#!/bin/bash

wget -P ~ https://github.com/yeasy/docker_practice/raw/master/_local/.bashrc_docker
echo "[ -f ~/.bashrc_docker ] && . ~/.bashrc_docker" >> ~/.bashrc
source ~/.bashrc
