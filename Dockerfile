FROM alpine:latest

USER root

WORKDIR /home/aws

RUN adduser -S aws

RUN apk --no-cache update && \
    apk --no-cache add py-pip jq && \
    pip install --upgrade pip && \
    pip --no-cache-dir install awscli && \
    pip --no-cache-dir install awscli  && \
    rm -rf /var/cache/apk/*

USER aws