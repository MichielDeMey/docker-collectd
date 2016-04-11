# Collectd Docker Container

This container will report statistics of a Docker host to a collectd server.

# Usage
Since the hostname for a Docker container is automatically generated, it's recommended that you set it explicitly using the `-h` argument. 


## Environment Variables
| Variable | Default | Description |
|---------------|-------------|-----------------------------------------------------------------|
| HOSTNAME | <generated> | The hostname you wish to report to collectd |
| COLLECTD_HOST | 127.0.0.1 | The address of the collectd server you wish to forward stats to |
| COLLECTD_PORT | 25826 | The port of the collectd server |

# Example
```
docker run -h "My Host" -e "COLLECTD_PORT=12345" astromo/collectd-influxdb
```
