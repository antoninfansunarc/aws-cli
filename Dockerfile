FROM ubuntu:14.04

RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy python-pip groff-base
RUN pip install awscli \
                wget 
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
