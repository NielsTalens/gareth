## Extracted Product Charter

#### Core Principles *(Confidence: High)*
- Conversation-first interaction as the primary (ideally only) interface.
- Actions over insights (drive execution, not reporting).
- Automation by default (capture/update without user data entry).
- Reduce user choice/complexity; prioritize and guide.

**Evidence**
- “conversation first, always… everything through chat / language, no screens if we can avoid it”
- “actions > insights… avoid anything that looks like reporting”
- “automation by default… system should just capture stuff… if user has to fill fields → something went wrong”
- “reduce choices, don’t give users 10 options”
- “remove searching → remove updating → remove deciding… replace it with… clear next action… immediate execution… no admin overhead”

---

#### Product Boundaries *(Confidence: High)*
- Not a reporting/BI/analytics/dashboard-centric tool (especially not initially).
- Not a data-entry system.
- Not endlessly customizable.
- Not “another version of Salesforce”; avoid traditional CRM UI patterns (tabs/screens/dashboards).

**Evidence**
- “what we are not… not a reporting tool… not BI… not a place to input data… not something you customize endlessly… basically not another version of Salesforce”
- “We’re intentionally not doing: traditional screens… analytics dashboards (at least not upfront)… manual pipeline management”
- “if we start adding tabs + dashboards we’re probably drifting”
- “random note: if it starts looking like a traditional CRM again, we’ve probably lost the plot”

---

#### Behavioral Rules *(Confidence: High)*
- Provide “next best action” and ideally suggest actions proactively (before being asked).
- Keep pipeline and activity logging updated automatically and invisibly in the background.
- Present prioritized actions with necessary context and suggested next step/message.
- Enable immediate execution via simple commands (e.g., send/call/schedule) with no “after work.”
- Avoid browsing/navigation; user reacts to recommended actions rather than searching.

**Evidence**
- “system suggests actions before you ask (ideally)”
- “everything updates in background, invisible”
- “tell you what to do next… ask ‘what should I do now?’ and it gives you a straight answer. No hunting around.”
- “get list of actions already prioritized… each item includes: who, context, suggested message or next step”
- “user clicks or replies in chat: ‘send this’ / ‘call now’ / ‘schedule’… action executes immediately… everything logs automatically… pipeline updates itself”
- “You don’t go into dashboards or pipelines. You just interact with it like you would with ChatGPT”
- “basically zero data entry… if user has to type things in fields, we probably failed”

---

#### Decision-Making Rules *(Confidence: High)*
- Prefer removing screens over adding them.
- Features must help someone take action immediately; if it doesn’t lead to action, it likely shouldn’t exist.
- Reduce required user input; if users must fill fields, something is wrong.
- Avoid drift toward traditional CRM patterns (tabs/dashboards).

**Evidence**
- “decision rules (gut checks): can we remove a screen instead of adding one”
- “does this help someone take action immediately”
- “can we reduce input here”
- “if it doesn’t lead to action → probably shouldn’t exist”
- “if user has to fill fields → something went wrong”
- “if we start adding tabs + dashboards we’re probably drifting”

---

#### Product Character *(Confidence: High)*
- Should feel focused, direct, calm, and decisively guiding (“almost telling you what to do”).
- Should help users feel in control, not overwhelmed; reduce stress/guilt associated with CRM admin.

**Evidence**
- “product should feel like: focused, direct, calm, a bit decisive (almost telling you what to do)”
- “users… want: to feel in control… not feel overwhelmed… not feel like they’re doing admin work… ideal state = calm, clear, just doing the next thing”

---

#### Language and Tone *(Confidence: High)*
- Short and direct.
- No hype, cheerleading, or buzzwords.
- Use action-oriented phrasing (commands), not analytic/status language.

**Evidence**
- “tone / language… short, direct… no hype / no ‘you’re crushing it’ type stuff… no buzzwords”
- “more like: ‘call these 3 deals’ not: ‘pipeline health improved’”

---

#### Evolution Constraints *(Confidence: Medium)*
- Avoid evolving into a traditional CRM with tabs/dashboards/screens.
- Aim for “invisible” CRM over time (present but not mentally taxing / not foregrounded).

**Evidence**
- “if we start adding tabs + dashboards we’re probably drifting”
- “if it starts looking like a traditional CRM again, we’ve probably lost the plot”
- “Feels like CRM should become kind of invisible over time… that’s the direction.”

---

#### Integrity Checks *(Confidence: Medium)*
- Training/onboarding should be minimal; if training is needed, treat as failure signal.
- “If user has to fill fields” is a failure condition.
- “Drift” indicators: adding tabs/dashboards; looking like traditional CRM; adding non-action/reporting features.

**Evidence**
- “If someone needs training, we probably failed.”
- “if user has to fill fields → something went wrong”
- “if we start adding tabs + dashboards we’re probably drifting”
- “if it starts looking like a traditional CRM again, we’ve probably lost the plot”

---

## Completeness
**Complete** → principles, boundaries, behavioral rules, and decision-making rules are all clearly present.

---

## Strength
**High** → clear and enforceable principles (“actions > insights”, “automation by default”), explicit “not” boundaries, and concrete gut-check decision rules that can be used to evaluate features and prevent drift.

---

## Suggestions
- **Add explicit trade-off priority order** (e.g., “actionability > automation > conversational purity > breadth of features”) to resolve conflicts when principles compete (e.g., automation vs. correctness, fewer choices vs. user control).
- **Define measurable integrity metrics** (e.g., % actions executed from recommendations, % activities auto-logged, median time-to-next-action, # required fields/user inputs) to operationalize “if user has to fill fields, we failed” and “no training.”
- **Clarify boundaries around “voice later” and “no screens”** (what minimal UI elements are acceptable—notifications, lists, confirmations) to reduce ambiguity as the product expands.