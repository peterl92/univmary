FROM alpine:latest

ADD app.sh /opt/app.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/app.sh

ENTRYPOINT ["sh", "-c", "/opt/app.sh"]
