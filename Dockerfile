FROM alpinelinux/base

RUN apk update && apk add curl \
  && curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.6/go-cron-linux.gz \
    | zcat > /usr/local/bin/go-cron \
  && chmod u+x /usr/local/bin/go-cron

# docker run webwurst/docker-go-cron go-cron "*/10 * * * * *" /bin/sh -c "echo hello"