# SaaS Dashboard Refresh Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Refresh the Gantly UI so it feels like a SaaS dashboard product shell instead of a plain tool screen.

**Architecture:** Keep the current Sinatra view and client-side behavior intact while restructuring the page into a stronger product header plus two-panel dashboard layout. Most of the work is in `views/index.erb` and `public/styles.css`, with no workflow changes in `public/app.js`.

**Tech Stack:** Sinatra ERB, vanilla CSS, vanilla JavaScript

---

### Task 1: Add product-shell structure

**Files:**
- Modify: `views/index.erb`

**Step 1: Update the page markup**

Wrap the current controls in a branded dashboard header with product title, short description, and grouped navigation controls.

**Step 2: Keep existing interaction hooks intact**

Preserve `data-project-tags`, `data-view-tabs`, `data-view-panel`, `#evaluate`, `#run-coherence`, `#summary`, `#coherence-summary`, `#cards`, and `#coherence-cards`.

**Step 3: Verify structure by inspection**

Confirm the header, task panel, and results workspace are distinct in markup and existing JS selectors still match.

### Task 2: Refresh the visual system

**Files:**
- Modify: `public/styles.css`

**Step 1: Upgrade page framing**

Add a dashboard background, stronger shell spacing, layered panels, and a clearer desktop layout.

**Step 2: Polish controls and panels**

Refine header controls, task panel, summary card, results cards, and secondary toggles so they feel like product UI rather than raw utility controls.

**Step 3: Keep mobile behavior intact**

Adjust responsive rules so the dashboard collapses cleanly on narrower screens.

### Task 3: Verify the refresh

**Files:**
- Verify: `views/index.erb`
- Verify: `public/styles.css`

**Step 1: Review diff**

Run: `git diff -- views/index.erb public/styles.css`

Expected: only layout and styling changes for the product-shell refresh.

**Step 2: Manual verification**

Run the app and confirm the page reads like a dashboard product surface, with a clear header, left task area, right results workspace, and preserved feature/alignment flows.
