FROM alpine:3.6
LABEL maintainer "ysugimoto <sugimoto@wnotes.net>"

RUN apk add stunnel redis --update

COPY ./boot.sh /boot.sh

RUN chmod +x /boot.sh

CMD ["/boot.sh"]
