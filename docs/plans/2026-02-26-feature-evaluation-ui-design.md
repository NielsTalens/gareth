# Feature Evaluation UI Design

Date: 2026-02-26
Topic: Single-page user-facing application for feature proposal evaluation
Primary user: Product Owner
Success criterion: User ends with either a clearly aligned feature or no feature due to misalignment.
Tone: Neutral, evidence-based.

## Overview
Build a single-page interface that lets a Product Owner paste a feature proposal and receive evaluators' feedback. The page uses progressive disclosure: a concise summary at top-right, with per-evaluator details expanding for evidence and guidance.

## Architecture
- Single-page web app with two regions: left input, right evaluation panel.
- Stateless UI: submits feature text to an evaluation service and renders results.
- Evaluation service runs the existing evaluator agents (strategy, vision, JTBD, product charter, feedback) and an orchestrator to aggregate results.
- Progressive disclosure on the right: summary first, details on demand.

## Components
- FeatureInput
  - Large textarea
  - "Evaluate" action
  - Minimal helper text
- EvaluationSummary
  - Overall recommendation
  - Average alignment score
  - Risk level
  - Top conflict themes
- EvaluatorCards
  - One card per evaluator
  - Alignment score, confidence, risk
  - 1-2 evidence snippets
  - Expand to show full evidence and "what makes 5/5"
- Empty/Loading/Error states
  - Neutral language
  - No hype or emotional reactions

## Data Flow
1. User enters feature text and clicks Evaluate.
2. UI posts `{ feature_proposal }` to evaluation service.
3. Service loads product docs and runs evaluator agents.
4. Service returns per-evaluator JSON results plus orchestrator summary JSON.
5. UI renders summary and evaluator cards.
6. No persistence in v1; each evaluation is ephemeral.

## Error Handling
- Service failure: show neutral error banner; keep input intact.
- Partial failure: show available results; mark failed evaluator as unavailable.
- Missing/empty docs: summary notes low confidence and missing evidence.

## Testing
- Evaluator unit tests: JSON schema compliance and evidence quoting rules.
- Orchestrator unit tests: average alignment, variance, recommendation logic.
- UI tests: renders summary + cards from mock JSON; handles partial failure.

## Constraints
- Single page only.
- Strictly neutral tone in v1.
- Evidence snippets are required in the UI.
