FROM nginx
MAINTAINER Ken Jenney

RUN apt update && \
    apt-get install -y wget python && \
    wget https://dl.influxdata.com/telegraf/releases/telegraf_1.12.3-1_amd64.deb && \
    dpkg -i telegraf_1.12.3-1_amd64.deb

COPY static /usr/share/nginx/html

COPY logcreator /usr/local/bin/
RUN chmod +x /usr/local/bin/logcreator

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN mkdir -p /var/log/test

COPY .env /etc/default/telegraf
COPY telegraf.conf /etc/telegraf/

CMD /entrypoint.sh
