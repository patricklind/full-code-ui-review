---
name: full-code-ui-review
description: Complete repository-wide review and repair covering architecture, correctness, code quality, UI/UX, accessibility, security, performance, testing, configuration, dependencies, build and release readiness. Use for full audits, full code/UI reviews, production hardening, review-and-fix work, or requests to find and fix everything.
---

# Full Code & UI Review

Use this as the master workflow for broad project reviews. It may be invoked directly as `/full-code-ui-review` or selected automatically when the request clearly matches.

## Workflow

1. Read `CLAUDE.md`, `AGENTS.md`, README/contribution docs and relevant project skills before changing code.
2. Understand the stack, architecture, critical workflows, build/test commands and runtime dependencies.
3. Establish a baseline using the relevant checks available in the project.
4. Review the system systematically rather than stopping at the first defect.
5. Prioritize security, data integrity, authorization, crashes and critical functionality before polish.
6. Fix root causes using minimal safe changes.
7. Add regression tests for important fixes where practical.
8. Rerun quality gates and inspect the final diff.
9. Report only what was actually verified.

Apply relevant dimensions only: architecture, correctness, UI/UX, accessibility, auth, APIs, data, security, reliability, performance, observability, configuration, dependencies, deployment and tests.

## Non-negotiable rules

- Evidence before assumptions.
- Preserve unrelated user changes.
- Never disable tests, linting, type checks, validation or security controls to get green output.
- Never substitute placeholders or fake implementations for working functionality.
- Never perform destructive data changes without a safe migration/recovery path.
- Never claim tests, browser flows, builds or commands passed unless run.
- Prefer existing sound conventions and dependencies.

For UI-heavy work, use `/ui-ux-quality` as a focused companion. For security-sensitive work, use `/security-hardening`. If `PROMPT.md` exists, use it as the expanded checklist.