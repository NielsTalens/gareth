# Mostly Aligns Fallback Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a general `mostly_aligns_with` evaluator field and show it in the UI when an evaluation has no conflicts.

**Architecture:** Extend the shared evaluator normalization layer with an optional `mostly_aligns_with` array, update the active evaluator prompts to emit it, and teach the frontend renderer to swap the conflict section into a positive-alignment section when no conflicts are present. Keep the existing JSON shape stable for current fields.

**Tech Stack:** Ruby, Sinatra, vanilla JavaScript, Minitest

---

### Task 1: Add backend regression tests for positive alignment output

**Files:**
- Modify: `test/app_test.rb`

**Step 1: Write the failing tests**
- Add a test that stubs one evaluator to return `mostly_aligns_with` and asserts the `/evaluate` payload includes it.
- Add a test that stubs one evaluator to return no `mostly_aligns_with` and asserts the field still normalizes to an array.

**Step 2: Run tests to verify they fail**

Run: `bundle exec ruby -Itest test/app_test.rb --name '/mostly_aligns/'`
Expected: FAIL because the field is not normalized yet.

### Task 2: Add shared normalization support

**Files:**
- Modify: `lib/evaluators/base.rb`

**Step 1: Implement minimal code**
- Add `mostly_aligns_with` to the normalized evaluator payload.
- Normalize it as an array of strings, matching the existing normalization pattern.

**Step 2: Run the targeted tests**

Run: `bundle exec ruby -Itest test/app_test.rb --name '/mostly_aligns/'`
Expected: PASS.

### Task 3: Update active evaluator prompts

**Files:**
- Modify: `product-thinking/01-strategy-evaluator.md`
- Modify: `product-thinking/02-vision-evaluator.md`
- Modify: `product-thinking/03-jtbd-evaluator.md`
- Modify: `product-thinking/05-product-charter-evaluator.md`
- Modify: `product-thinking/06-feedback-evaluator.md`

**Step 1: Update prompt schemas**
- Add a `mostly_aligns_with` array to each output schema.
- Instruct the model to fill it with the main themes the feature already supports.
- Make clear that when conflicts are empty, this field should still be populated if there is meaningful positive alignment.

### Task 4: Update frontend rendering

**Files:**
- Modify: `public/app.js`

**Step 1: Implement minimal UI change**
- Read `mostly_aligns_with` from each evaluator payload.
- When conflicts exist, keep the current `Detected Conflicts` rendering.
- When conflicts are empty and `mostly_aligns_with` has values, render a `Mostly aligns with` list instead of the generic empty state.
- Fall back to `No conflicts detected.` only when both are empty.

### Task 5: Run verification

**Files:**
- Test: `test/app_test.rb`

**Step 1: Run targeted tests**

Run: `bundle exec ruby -Itest test/app_test.rb --name '/mostly_aligns/'`
Expected: PASS.

**Step 2: Run the full suite**

Run: `bundle exec ruby -Itest test/app_test.rb`
Expected: PASS.
