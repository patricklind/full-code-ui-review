---
name: test-fix-verify
description: Establish a quality baseline, repair failing tests/checks, add regression coverage for real fixes, and verify the final state. Use when tests, lint, typing, builds or CI are failing, or when changes require disciplined validation.
---

# Test, Fix & Verify

## Baseline

Discover the project's real quality commands from manifests, Makefiles, task runners, CI and docs. Run only relevant checks and record failures before editing.

## Repair rules

- Determine whether a failure indicates a product defect, test defect, environment limitation or stale expectation.
- Fix real defects at the source.
- Update tests only after verifying intended behavior.
- Never delete, skip or weaken a test merely to make the suite green.
- Never disable lint/type/security checks to pass CI.
- Add regression coverage for important bugs where practical.
- Prefer behavior-focused tests over implementation trivia.

## Verification ladder

Use as applicable:
1. formatter/check
2. lint/static analysis
3. type check/compile
4. focused unit tests
5. broader unit suite
6. integration tests
7. end-to-end/smoke tests
8. production build/package
9. security/dependency checks
10. manual critical workflow verification

Do not claim success for checks that could not run. Document unavailable infrastructure, credentials, hardware or external services explicitly.