FROM ubuntu:22.04
ARG TAGS
WORKDIR /usr/local/bin
RUN apt update -y \
&& apt upgrade -y \
&& apt install -y software-properties-common \
&& add-apt-repository --yes --update ppa:ansible/ansible \
&& apt install -y ansible
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
