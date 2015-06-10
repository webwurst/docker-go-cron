FROM alpine

RUN apk update && apk add curl \
  && curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.6/go-cron-linux.gz \
    | zcat > /usr/local/bin/go-cron \
  && chmod u+x /usr/local/bin/go-cron \
  && rm -rf /var/cache/apk/* && \

EXPOSE 8080
COPY go-cron.sh /usr/local/bin/
CMD ["go-cron.sh"]

# $ docker run -e SCHEDULE="@every 10s" -e COMMAND="echo hello" local/go-cron
