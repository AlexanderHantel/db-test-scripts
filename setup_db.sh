#!/bin/bash
set -e

echo "Initializing database..."
sqlite3 test.db "DROP TABLE IF EXISTS users;"
sqlite3 test.db "CREATE TABLE users (id INT, name TEXT);"
sqlite3 test.db "INSERT INTO users VALUES (1, 'Alice'), (2, 'Bob');"

echo "Database ready."
