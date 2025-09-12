#!/bin/bash

echo "Running test: email format"
invalid=$(sqlite3 test.db "SELECT COUNT(*) FROM employees WHERE email NOT LIKE '%@%';")
if [ "$invalid" -eq 0 ]; then
  echo "OK: all emails have @"
  exit 0
else
  echo "FAIL: found $invalid invalid emails"
  exit 1
fi
