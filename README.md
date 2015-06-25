# docker-go-cron

See:
- https://github.com/odise/go-cron
- https://github.com/rk/go-cron

Example:
```bash
$ sudo docker build -t local/go-cron .
$ sudo docker run -e SCHEDULE="@every 10s" -e COMMAND="echo hello" local/go-cron

# or
$ sudo docker-compose up
```
