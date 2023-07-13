# 6.S081_Lab_Enviroment

This repository contains a Dockerfile that builds a Docker image capable of running the 6.S081 lab

# Requirment

1. [Docker](https://www.docker.com/)
2. SSH Client

# How to use

1. Build docker image `docker build -t 6s081 .`
2. To run the container, use the command `docker-compose up -d`. The default SSH port is `3333` on `localhost`. If you want to change this port, you can edit the docker-compose.yml file.
3. Using command `ssh localhost -p 3333 -l root` to connect this container with username `root` , password is `rootpass`
