#!/bin/sh

cat << EOF > /etc/stunnel/redis.conf
fips = no
setuid = nobody
setgid = nogroup
pid =
debug = 7
[redis-cli]
 client = yes
 accept = 127.0.0.1:6379
 connect = ${REDIS_URL}
EOF

stunnel /etc/stunnel/redis.conf
