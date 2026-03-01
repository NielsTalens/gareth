# Project Output Logging Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Save each `/evaluate` run to one markdown file in `projects-output` containing the feature input and the JSON output.

**Architecture:** Add a small `RunLogger` helper responsible for path creation, filename formatting, and markdown rendering. Invoke it once from `POST /evaluate` after evaluations/errors/meta are assembled so one file is generated per request.

**Tech Stack:** Ruby, Sinatra, Minitest, FileUtils, JSON

---

### Task 1: Add Failing Integration Test For Run Logging

**Files:**
- Modify: `test/app_test.rb`

**Step 1: Write the failing test**
- Add test that calls `POST /evaluate`.
- Assert one `.md` file exists in `projects-output`.
- Assert file content includes feature input and JSON keys.

**Step 2: Run test to verify it fails**
Run: `ruby -Itest test/app_test.rb`
Expected: FAIL because no output file is written yet.

### Task 2: Implement RunLogger Helper

**Files:**
- Create: `lib/run_logger.rb`

**Step 1: Write minimal implementation**
- Ensure `projects-output` exists.
- Build filename `project-YYYY-MM-DD-HH:MM.md`.
- Write markdown with `# Feature Input` and `# Results Output` sections.
- Render pretty JSON in fenced `json` code block.

**Step 2: Run tests**
Run: `ruby -Itest test/app_test.rb`
Expected: still failing until app route calls logger.

### Task 3: Wire Logger Into /evaluate

**Files:**
- Modify: `app.rb`

**Step 1: Call logger in route**
- Require `lib/run_logger`.
- Build response payload hash.
- Write run file once and then return same payload as JSON.

**Step 2: Run tests to verify pass**
Run: `ruby -Itest test/app_test.rb`
Expected: PASS.
