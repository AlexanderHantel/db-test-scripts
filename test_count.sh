#!/bin/bash
set -e

echo "Running test: count users"
count=$(sqlite3 test.db "SELECT COUNT(*) FROM employees;")
if [ "$count" -eq 4 ]; then
  echo "OK: found 4 employees"
  exit 0
else
  echo "FAIL: expected 4 employees, got $count"
  exit 1
fi
