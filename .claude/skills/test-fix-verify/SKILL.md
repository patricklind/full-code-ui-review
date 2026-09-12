---
name: test-fix-verify
description: Establish a quality baseline, repair failing tests/checks, add regression coverage for real fixes, and verify the final state. Use when tests, lint, typing, builds or CI are failing, or whenever code changes require disciplined validation.
---

# Test, Fix & Verify

Invoke as `/test-fix-verify` for focused verification work.

1. Discover the project's actual quality commands from manifests, task runners, CI and documentation.
2. Run relevant checks and record the baseline before editing when practical.
3. Classify failures as product defects, test defects, environment limitations or stale expectations.
4. Fix real defects at the source.
5. Update tests only after establishing intended behavior.
6. Add regression coverage for important fixed bugs when practical.
7. Rerun the narrow failing check, then broaden validation.

Verification ladder where applicable:
- format/check
- lint/static analysis
- type check/compile
- focused tests
- broader unit tests
- integration tests
- end-to-end/smoke tests
- production build/package
- security/dependency checks
- critical manual workflow verification

Never delete, skip or weaken tests merely to obtain green status. Never disable lint/type/security gates. Do not report checks as passing unless they were actually executed successfully. Document missing infrastructure, credentials, hardware or external services explicitly.