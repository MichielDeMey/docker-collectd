FROM gliderlabs/alpine:3.3

WORKDIR /collectd

RUN apk update
RUN apk add bash
RUN apk add collectd
RUN apk add collectd-network

# Generate the collectd configuration
ADD init.sh .
ADD configure.sh .
ADD collectd.conf.template .

CMD ["/bin/bash", "-c", "./init.sh"]
