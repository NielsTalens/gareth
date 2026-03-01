---
title: User Flows
desc: describe the flows users can follow in the products. Think op happy flows but also include non-happy and edge cases.
---

# User Flow – Start of Day

## Summary
User asks what to do and executes tasks directly.

## Actor
Sales representative

## Preconditions
- CRM connected to email & calendar
- Active deals in pipeline

## Primary Flow (happy path)
1. User opens app
2. Types: “What should I do today?”
3. System shows 5 prioritized actions
4. User clicks action
5. Email/call drafted automatically
6. User approves and sends
7. CRM updates automatically

## Alternate flows
- Missing data → system asks 1 clarifying question
- Conflict in priority → system explains ranking briefly
- No urgent tasks → system suggests pipeline building

## Postconditions
Tasks executed. Pipeline updated automatically.

## Success criteria (example metrics)
- <10 seconds to first action
- >80% suggested tasks executed
- Zero manual field updates

## UI copy examples (short)
- “Here’s what matters now.”
- “Call Sarah. Deal at risk.”
- “Email drafted. Send?”

---

# User Flow – Add New Lead :contentReference[oaicite:4]{index=4}

## Summary
Add lead via conversation.

## Actor
Sales representative

## Preconditions
User logged in.

## Primary Flow (happy path)
1. User types: “Met Alex from BrightTech.”
2. System asks: “Is this a new deal?”
3. User confirms
4. System creates contact + deal
5. System suggests next step
6. User executes

## Alternate flows
- Duplicate detected → merge suggestion
- Missing company data → auto-enrich

## Postconditions
Lead and deal created without forms.

## Success criteria (example metrics)
- <30 seconds to create deal
- No manual field filling
- Auto-enrichment rate >70%

## UI copy examples (short)
- “New deal created.”
- “Next step: book intro call.”
- “Reminder set.”
