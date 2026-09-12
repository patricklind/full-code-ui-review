---
name: root-cause-debug
description: Diagnose and fix bugs, regressions, crashes, failed commands, broken workflows, race conditions, integration failures and unexplained behavior by reproducing the issue and tracing it to the root cause. Use when something is broken or intermittent and the user wants it fixed, not merely explained.
---

# Root-Cause Debug

## Workflow

1. Read repository instructions and identify the affected execution path.
2. Reproduce the failure when possible and capture the exact error, inputs and environment.
3. Establish what should happen versus what actually happens.
4. Trace the failure through callers, state changes, data flow and external boundaries.
5. Form hypotheses ranked by evidence, then test them.
6. Fix the earliest/root cause rather than downstream symptoms.
7. Add a regression test or reproducible check where practical.
8. Rerun the failing path and nearby critical paths.

## Rules

- Do not add arbitrary sleeps to hide races.
- Do not swallow exceptions.
- Do not broaden catch blocks merely to stop crashes.
- Do not weaken validation or typing.
- Do not change unrelated behavior.
- For intermittent failures, inspect concurrency, ordering, caching, stale state, retries, timeouts and lifecycle cleanup.
- For external integrations, verify request/response assumptions and failure modes.

## Output

State: symptom, root cause, fix, evidence, verification, and any remaining uncertainty.