#!/bin/bash
./configure.sh < collectd.conf.tpl > /etc/collectd/collectd.conf

for f in /etc/collectd/collectd.d/*.conf
do
  echo "Configuring $f ..."
  TMP_FILE=/tmp/$(basename $f)
  ./configure.sh < $f > TMP_FILE
  mv TMP_FILE $f
done

# Main executable, -f flag for "no-fork" mode
# (prevents running as a daemon)
/usr/sbin/collectd -f
