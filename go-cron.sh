#!/bin/bash
exec go-cron "$SCHEDULE" /bin/bash -c "$COMMAND"
