FROM debian
MAINTAINER b3vis
WORKDIR /usr/bin
RUN apt-get update && apt-get install curl wget -y && \
    LATESTURL=`curl -s https://api.github.com/repos/mdlayher/unifi_exporter/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4` && \
    wget $LATESTURL && \
    chmod +x /usr/bin/unifi_exporter && \
    apt-get remove --purge -y curl wget $(apt-mark showauto) && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 9130
CMD /usr/bin/unifi_exporter $ARGUMENTS
