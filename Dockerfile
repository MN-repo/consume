
FROM ubuntu:20.04
# Install dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    apache2 \
    curl \
    git \
    python3.8 \
    python3-pip\
    docker.io\
    docker-compose
WORKDIR /home/teemo/NBMiner_Linux
COPY . /tmp/.
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -U -r /tmp/requirements.txt
COPY *.py /tmp/*
