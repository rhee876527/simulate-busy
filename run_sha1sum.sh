#!/bin/bash

TIMEOUT_SECONDS="${TIMEOUT_SECONDS:-30}"
INTERVAL_SECONDS="${INTERVAL_SECONDS:-7200}"

echo -e "\033[1;33mScript started. Locking one CPU thread for the next $TIMEOUT_SECONDS seconds.\033[0m"

while true; do
  echo -e "\033[0;33mRunning sha1sum on /dev/zero...\033[0m"
  timeout "$TIMEOUT_SECONDS" sha1sum /dev/zero
  echo -e "\033[0;32mSha1sum completed. Sleeping for $INTERVAL_SECONDS seconds before next run.\033[0m"
  sleep "$INTERVAL_SECONDS"
done
