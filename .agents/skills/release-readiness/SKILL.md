---
name: release-readiness
description: Assess whether a project is ready for production or release by validating build, tests, configuration, migrations, dependencies, security, observability, deployment and rollback. Use before release, deployment, handoff or production-readiness decisions.
---

# Release Readiness

## Review

Validate the release path that actually exists:

- clean reproducible build/package
- relevant test suites and quality gates
- production configuration and required environment validation
- safe database/schema migrations and rollback/recovery
- dependency/security status
- health/readiness checks and observability
- deployment order and startup behavior
- secret handling and least privilege
- external service assumptions/timeouts
- upgrade/backward compatibility
- rollback or safe recovery strategy

## Decision rules

Classify blockers separately from non-blocking improvements.

A successful build alone is not release readiness. A release is blocked by unresolved critical security issues, data-loss/corruption risks, broken critical flows, unsafe migrations, or inability to start with valid production configuration.

## Final status

Return exactly one evidence-based state:
- Ready for intended use
- Ready with documented limitations
- Not ready for intended use
- Unable to determine fully

List the commands/checks actually run and every material unresolved risk.