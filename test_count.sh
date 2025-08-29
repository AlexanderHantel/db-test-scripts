#!/bin/bash
set -e

echo "Running test: count users"
RESULT=$(sqlite3 test.db "SELECT COUNT(*) FROM users;")
if [ "$RESULT" -eq 2 ]; then
  echo "✅ TEST PASSED: found 2 users"
  exit 0
else
  echo "❌ TEST FAILED: expected 2 users, got $RESULT"
  exit 1
fi
