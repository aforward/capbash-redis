FROM ubuntu:14.04

RUN apt-get -qq update && \
  apt-get -qqy upgrade && \
  apt-get install -y wget git make build-essential && \
  apt-get install -y redis-server

VOLUME ["/data","/log","/config"]
EXPOSE 6379

RUN echo "redis-cli -h \$RDB_PORT_6379_TCP_ADDR -p \$RDB_PORT_6379_TCP_PORT" > /usr/local/bin/rdb
RUN chmod 755 /usr/local/bin/rdb

CMD /usr/bin/redis-server /config/redis.conf
