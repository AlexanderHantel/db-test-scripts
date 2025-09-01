#!/bin/bash
set -e

echo "Running test: name not null"
RESULT=$(sqlite3 test.db "SELECT COUNT(*) FROM employees WHERE name IS NULL;")
if [ "$nulls" -eq 0 ]; then
  echo "OK: no null names"
  exit 0
else
  echo "FAIL: found $nulls null names"
  exit 1
fi
