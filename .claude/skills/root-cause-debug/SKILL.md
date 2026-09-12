---
name: root-cause-debug
description: Reproduce, diagnose and fix bugs, regressions, crashes, flaky behavior, failed commands, integration failures and race conditions by tracing them to the root cause. Use when something is broken and the user wants the actual cause fixed.
---

# Root-Cause Debug

Invoke directly as `/root-cause-debug` when useful.

1. Read relevant repository instructions and identify the affected path.
2. Reproduce the failure where possible and capture exact errors, inputs and environment.
3. Define expected versus actual behavior.
4. Trace callers, state transitions, data flow, concurrency and external boundaries.
5. Rank hypotheses by evidence and test them.
6. Fix the earliest/root cause, not downstream symptoms.
7. Add a regression test or reproducible verification when practical.
8. Rerun the broken path and nearby critical flows.

Do not add arbitrary sleeps, swallow exceptions, broaden catch blocks just to hide failures, weaken validation, or change unrelated behavior. For intermittent defects, explicitly inspect ordering, lifecycle, caching, stale state, retries, timeouts and cleanup.

Report symptom, root cause, fix, evidence, verification and remaining uncertainty.