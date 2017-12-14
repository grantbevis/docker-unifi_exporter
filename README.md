# unifi_exporter

Containerised version of [unifi_exporter](https://github.com/mdlayher/unifi_exporter)

unifi_exporter is a metrics exporter for [Prometheus](https://prometheus.io/)

Edit the example config.yml to your setup

---
#### 0.0.2

- 2017-03-31 :: Initial release
- 2017-12-14 :: Moved to Alpine
---
#### Example config.yml
```
listen:
  address: :9130
  metricspath: /metrics
unifi:
  address: https://unifi.mydomain.com:8443
  username:
  password:
  site:
  insecure: false
  timeout: 5s
```

#### Example Run Command

```
docker run -d -p 9130:9130 -v /srv/unifi_exporter/config.yml:/config/config.yml b3vis/unifi_exporter
```
---
