FROM garland/aws-cli-docker

RUN apk -U add bash curl
RUN curl -L https://github.com/sequenceiq/docker-alpine-dig/releases/download/v9.10.2/dig.tgz \
    | tar -xzv -C /usr/local/bin/

RUN mkfifo /var/log/update
COPY update-dns /etc/periodic/15min/update-dns
RUN chmod a+x /etc/periodic/15min/update-dns

COPY daemon /usr/sbin/daemon
RUN chmod +x /usr/sbin/daemon

CMD ["daemon"]
