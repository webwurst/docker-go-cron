#!/bin/sh
exec go-cron "$SCHEDULE" /bin/bash -c "$COMMAND"
