FROM ubuntu:14.04

RUN apt-get -qq update && \
  apt-get -qqy upgrade && \
  apt-get install -y wget git make build-essential

ADD src/redis-@REDIS_VERSION@.tar.gz /opt/redis
RUN cd /opt/redis/redis-@REDIS_VERSION@ && \
  make && \
  cp src/redis-server /usr/local/bin/redis-server && \
  cp src/redis-cli /usr/local/bin/redis-cli && \
  cp src/redis-sentinel /usr/local/bin/redis-sentinel

VOLUME ["/data","/log","/config"]
EXPOSE 6379

RUN echo "redis-cli -h \$RDB_PORT_6379_TCP_ADDR -p \$RDB_PORT_6379_TCP_PORT" > /usr/local/bin/rdb
RUN chmod 755 /usr/local/bin/rdb

ADD config /opt/config
CMD redis-server /opt/config/redis.conf
