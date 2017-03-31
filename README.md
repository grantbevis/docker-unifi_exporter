# unifi_exporter

Containerised version of [unifi_exporter](https://github.com/mdlayher/unifi_exporter)

unifi_exporter is a metrics exporter for [Prometheus](https://prometheus.io/)

Make sure you set the ARGUMENTS variable with the details to access your UniFi instance

---
#### 0.0.1 (2017-03-31)

Initial release

---
#### Example Run Command

```
docker run -d -p 9130:9130 -e ARGUMENTS="-unifi.addr https://10.0.0.1:8443 -unifi.username admin -unifi.password password" b3vis/unifi_exporter
```

#### Docker Compose Example
```
version: "2"
services:
  unifi_exporter:
    image: b3vis/unifi_exporter
    restart: always
    container_name: unifi_exporter
    environment:
      - ARGUMENTS="-unifi.addr https://10.0.0.1:8443 -unifi.username admin -unifi.password password"
    ports:
      - "9130:9130"
```
---
