# Database Test Automation with Shell Scripts

## Project Overview
This project demonstrates automated database testing using **shell scripts** and **SQLite**.  
On every push (or manual trigger), GitHub Actions runs a series of scripts that:
1. Set up a database schema and seed data.
2. Execute validation queries.
3. Report results directly in the **Actions UI**, with each test job clearly visible.

The goal is to provide a simple yet extensible foundation for database testing pipelines.

---

## Features
- **SQLite-based DB setup** using `setup_db.sh`.
- **Shell-script tests** (`test_count.sh`, `test_email_format.sh`, `test_email_unique.sh`, `test_name_not_null.sh`).
- **Isolated GitHub Actions jobs**: each script runs in its own job, so results are tracked individually.
- **Clear CI visibility**: pass/fail status of each script is shown directly in GitHub Actions.

---

## Checking CI Status in GitHub Actions
1. Navigate to the **Actions** tab in the GitHub repository.  
2. Select the workflow **DB Tests**.  
3. You will see separate jobs for each test (`test_count`, `test_email_format`, `test_email_unique`, `test_name_not_null`).  
   - Green check = test passed  
   - Red cross = test failed  
4. Click on a job to expand its logs and see the full output of the executed script.

---

## Continuous Integration
The project uses GitHub Actions to automate testing:

- Triggers on:
  - Pushes to the `dev` branch.
  - Pull requests into the `dev` branch.
  - Manual runs via **workflow_dispatch**.
