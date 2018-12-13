FROM alpine:latest

WORKDIR /root

RUN apk --no-cache update && \
  apk --no-cache add python py-pip jq && \
  pip --no-cache-dir install awscli && \
  apk --no-cache del py-pip && \
  rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/sh", "--login" ]