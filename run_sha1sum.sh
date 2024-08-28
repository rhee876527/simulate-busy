#!/bin/bash

TIMEOUT_SECONDS="${TIMEOUT_SECONDS:-30}"
INTERVAL_SECONDS="${INTERVAL_SECONDS:-7200}"

while true; do
  timeout "$TIMEOUT_SECONDS" sha1sum /dev/zero
  sleep "$INTERVAL_SECONDS"
done
