#!/bin/bash
exec go-cron -s "$SCHEDULE" -p 8080 -- /bin/bash -c "$COMMAND"
