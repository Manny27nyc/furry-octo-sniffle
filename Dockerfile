FROM alpine:3.15.4

RUN apk add --no-cache openssl bash && \
  rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
