FROM ubuntu:20.04

ENV MONGODB_TOOLS_VERSION=6.0.3

RUN apt update \
 && apt install wget gnupg -y

RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - \
 && echo "deb [arch=amd64,arm64] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list

RUN apt update \
 && apt install mongodb-org-tools=$MONGODB_TOOLS_VERSION -y

RUN apt install python3 python3-pip -y \
 && pip3 install awscli
