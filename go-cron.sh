#!/bin/sh
exec go-cron "$SCHEDULE" /bin/sh -c "$COMMAND"
