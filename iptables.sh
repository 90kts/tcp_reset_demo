#!/bin/bash
set -eo pipefail

if [ "$TCP_RESET" = "true" ]; then
  echo "rejecting with TCP RST"
  /sbin/iptables -I INPUT 1 -p tcp -j REJECT --reject-with tcp-reset
fi

tail -f /dev/null
