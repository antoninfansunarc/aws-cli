FROM ubuntu:14.04.5
LABEL maintainer="anton.infant@sunarctechnologies.com"

ENV  
# built-in packages
RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends \
      curl \
      awscli \
      wget \
      python \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/lib/apt/lists/*

