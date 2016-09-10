FROM gliderlabs/alpine:3.4

WORKDIR /collectd

RUN apk update
RUN apk add bash
RUN apk add collectd
RUN apk add collectd-network

# Add collectd.d directory for plugin configuration
ADD collectd.d /etc/collectd/collectd.d

# Generate the collectd configuration
ADD init.sh .
ADD configure.sh .
ADD collectd.conf .

CMD ["/bin/bash", "-c", "./init.sh"]
