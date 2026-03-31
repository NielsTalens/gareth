# Dynamic Task Header Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Make the left task header title and helper copy update to match the active mode.

**Architecture:** Keep the mode-switching logic in `public/app.js` as the single source of truth. Add stable DOM ids in `views/index.erb`, then update those nodes whenever `setActiveView` runs.

**Tech Stack:** Sinatra ERB, vanilla JavaScript, Minitest, Node test harness

---

### Task 1: Add a failing front-end regression test

**Files:**
- Modify: `test/support/app_view_switch_test.mjs`
- Test: `test/app_js_test.rb`

**Step 1: Extend the DOM stub**

Add nodes for the task header title and helper copy.

**Step 2: Assert both modes**

Verify feature mode shows the feature title/copy and coherence mode shows the alignment title/copy.

### Task 2: Wire the task header to active mode

**Files:**
- Modify: `views/index.erb`
- Modify: `public/app.js`

**Step 1: Add stable ids**

Expose DOM ids for the task header title and helper copy.

**Step 2: Update from `setActiveView`**

Set the title and helper copy from a small mode-config map whenever the active view changes.

### Task 3: Verify

**Files:**
- Verify: `public/app.js`
- Verify: `views/index.erb`

**Step 1: Run focused test**

Run: `ruby -Itest test/app_js_test.rb`

Expected: PASS
