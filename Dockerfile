FROM ubuntu:latest

MAINTAINER Tim Koopmans <tim@flood.io>

RUN apt-get update -y -qq
RUN apt-get install -y -qq \
  iptables lighttpd python python-dev supervisor tcpdump

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf
EXPOSE 80
VOLUME /var/www

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY ./iptables.sh /iptables.sh
RUN chmod 755 /iptables.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
