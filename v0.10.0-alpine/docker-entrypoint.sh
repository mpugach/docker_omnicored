#!/bin/bash
set -e

if [[ $(echo "$1" | cut -c1) = "-" ]]; then
  echo "$0: assuming arguments for omnicored"

  set -- omnicored "$@"
fi

if [[ $(echo "$1" | cut -c1) = "-" ]] || [[ "$1" = "omnicored" ]]; then
  mkdir -p "$BITCOIN_DATA"
  chmod 700 "$BITCOIN_DATA"

  echo "$0: setting data directory to $BITCOIN_DATA"

  set -- "$@" -datadir="$BITCOIN_DATA"
fi

if [[ "$1" = "omnicored" ]] || [[ "$1" = "omnicore-cli" ]] || [[ "$1" = "bitcoin-tx" ]]; then
  echo
  exec "$@"
fi

echo
exec "$@"
