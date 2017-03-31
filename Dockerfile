FROM alpine
MAINTAINER b3vis
WORKDIR /bin
RUN apk add curl wget --no-cache && \
    LATESTURL=`curl -s https://api.github.com/repos/mdlayher/unifi_exporter/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4` && \
    wget $LATESTURL && \
    chmod +x /bin/unifi_exporter && \
    apk del curl wget
EXPOSE 9130
CMD /bin/unifi_exporter
