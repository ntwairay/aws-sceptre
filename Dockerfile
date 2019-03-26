FROM alpine
MAINTAINER RayNg@Vibrato
LABEL Description="This is a base image with sceptre and Yamllint installed, which allows connecting Jenkins agents via JNLP protocols"

ADD requirements.txt /tmp/requirements.txt

RUN apk add --update \
    python3 \
    python3-dev \
    py3-pip \
    && python3 -m pip install -U pip \
    && pip install -r /tmp/requirements.txt
