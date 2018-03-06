FROM debian:jessie
MAINTAINER Ronalds Sovas <vk@dosje.in>

RUN set -xe \
    && apt-get update \
    && apt-cache policy netcat-openbsd \
    && apt-get install -y autoconf \
                          wget \
                          tor \
                          ssh \
                          sudo \
                          netcat-openbsd

ADD alias.txt /.alias

ADD start.sh /start.sh
RUN chmod 777 /start.sh

CMD ["/start.sh"]
