FROM alpine:latest

USER root

WORKDIR /home/aws

RUN adduser -S aws

RUN apk --no-cache update && \
    apk --no-cache add python py-pip jq && \
    pip --no-cache-dir install awscli && \
    apk --no-cache del py-pip && \
    rm -rf /var/cache/apk/*

USER aws