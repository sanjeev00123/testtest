#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo docker pull goldybawa48/nginx-test:latest
sudo docker run -d -p 80:80 goldybawa48/nginx-test:latest

