#!/bin/sh
# gate-check.sh — illustrative example of the gate pattern.
# Usage: ./gate-check.sh claims.tsv
# A gate asks a fixed question and returns a verdict:
#   pass — every claim row has an id, a statement, evidence, and a status.
#   fail — the named rows are incomplete, and the work goes back with findings.
# This is an illustrative script written for the showcase, not production code.

set -eu

FILE="${1:-claims.tsv}"

if [ ! -f "$FILE" ]; then
  echo "FAIL: no claims file: $FILE"
  exit 1
fi

# Skip the header line; every data row must have 4 tab-separated fields.
BAD=$(tail -n +2 "$FILE" | awk -F'\t' 'NF != 4 { print NR + 1 }')
if [ -n "$BAD" ]; then
  echo "FAIL: incomplete claim rows on lines: $BAD"
  exit 1
fi

echo "PASS: all claim rows complete in $FILE"
