FROM ubuntu:latest

MAINTAINER clayshcick <clay.schick@gmail.com>

# Usual magic to update, install & clean packages
RUN apt-get update && apt-get install -y \
    python-pip links \
    --no-install-recommends \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update pip
RUN pip install -U \
    pip \
    robotframework \
    robotframework-selenium2library \
#    robotframework-appiumlibrary \
    robotframework-faker

RUN mkdir /robot
VOLUME  /robot
WORKDIR /robot
