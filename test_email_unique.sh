#!/bin/bash
set -e

echo "Running test: emails unique"
duplicates=$(sqlite3 test.db "SELECT email, COUNT(*) FROM employees GROUP BY email HAVING COUNT(*) > 1;")
if [ -z "$duplicates" ]; then
  echo "OK: all emails unique"
  exit 0
else
  echo "FAIL: duplicate emails found"
  exit 1
fi
