#!/bin/bash
set -e

echo "Initializing database..."
sqlite3 test.db "DROP TABLE IF EXISTS employees;"
sqlite3 test.db "CREATE TABLE employees (id INT, name TEXT);"
sqlite3 test.db "INSERT INTO employees (name, email) VALUES ('Alice', 'alice@example.com'), ('Bob', 'bob@example.com'), ('Charlie', 'charlie@example.com'), ('Diana', 'diana@example.com');"

echo "Database ready."
