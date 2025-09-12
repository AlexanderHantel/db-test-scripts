#!/bin/bash

echo "Running test: count users"
count=$(sqlite3 test.db "SELECT COUNT(*) FROM employees;")
if [ "$count" -eq 5 ]; then
  echo "OK: found 5 employees"
  exit 0
else
  echo "FAIL: expected 5 employees, got $count"
  exit 1
fi
