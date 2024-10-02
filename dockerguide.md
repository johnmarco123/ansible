# Docker installation
* Learn how to use docker so i can test if the script is working or not.

To install docker:
## Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update


## then to install latest version
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## verify installation with this:

 sudo docker run hello-world
 
 
# Using docker for testing the script
## pull ubuntu image
docker pull ubuntu

## list your iages
docker images

## Dockerfiles
* example:
FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl

## building in docker
docker build -t image_name .

## running a existing image
docker run -it --name=ubuntu_container_name test-ubuntu /bin/bash
