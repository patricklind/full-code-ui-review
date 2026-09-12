---
name: full-code-ui-review
description: Perform a complete repository-wide review and repair across architecture, code quality, functionality, UI/UX, accessibility, security, performance, tests, configuration, dependencies, build and release readiness. Use when the user asks for a full review, full audit, review-and-fix, production hardening, or "find and fix everything". Do not use for tiny isolated edits.
---

# Full Code & UI Review

Treat the repository as a complete system, not a collection of isolated files.

## Mandatory workflow

1. Discover and read repository instructions (`AGENTS.md`, `CODEX.md`, README, contribution docs, local skills).
2. Determine project type, stack, entry points, build/test commands, runtime dependencies and critical workflows.
3. Establish a baseline with the relevant build, lint, type, test and runtime checks that are actually available.
4. Inspect architecture and implementation systematically.
5. Prioritize findings: security/data-loss/auth/crashes/critical workflows before UI polish.
6. Fix root causes using the smallest safe changes that fully solve each issue.
7. Add or update regression tests for important fixes when practical.
8. Rerun relevant checks and inspect the final diff for accidental changes.
9. Report only verified results and explicitly list remaining limitations.

## Review dimensions

Apply only dimensions relevant to the project:

- architecture and module boundaries
- correctness and edge cases
- code quality and maintainability
- UI/UX and responsive behavior
- accessibility
- authentication and authorization
- API contracts and integrations
- database/data integrity
- security and secret handling
- reliability, timeouts, retries and cleanup
- performance and scalability
- logging/observability
- configuration and environment handling
- dependencies and supply-chain risk
- build, packaging, deployment and rollback
- tests and release readiness

## Non-negotiable rules

- Evidence before assumptions.
- Never disable tests, linting, typing, validation or security controls to force green status.
- Never replace real functionality with placeholders or mocks.
- Never overwrite unrelated user changes.
- Never perform destructive data/schema changes without a safe migration/recovery path.
- Never claim a command, browser flow, build or test passed unless it was actually run.
- Preserve working behavior unless it is incorrect, unsafe or explicitly requested to change.
- Prefer existing project patterns and dependencies when they are sound.

## UI rule

For UI work, also apply the `ui-ux-quality` skill if available. Avoid generic AI/SaaS styling, generic purple gradients, glow-heavy interfaces, meaningless card grids and placeholder content.

## Security rule

For security-sensitive code, also apply the `security-hardening` skill if available.

## Verification rule

Before declaring completion, ensure the relevant available gates have been rerun. A successful build alone is not proof of correctness.

If the repository contains `PROMPT.md`, use it as the expanded checklist after this skill activates.