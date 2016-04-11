#!/bin/bash
./configure.sh < collectd.conf.template > /etc/collectd/collectd.conf

/usr/sbin/collectd -f
