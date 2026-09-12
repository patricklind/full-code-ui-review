---
name: release-readiness
description: Assess whether a project is ready for production or release by validating build, tests, configuration, migrations, dependencies, security, observability, deployment and rollback. Use before deployment, release, handoff or production-readiness decisions.
---

# Release Readiness

Invoke as `/release-readiness` before shipping.

Validate the actual release path:

- reproducible build/package
- relevant tests and quality gates
- production configuration and required environment validation
- safe migrations plus rollback/recovery
- dependency/security status
- health/readiness checks and observability
- startup/deployment order
- secret handling and least privilege
- external service assumptions and timeouts
- upgrade/backward compatibility
- rollback or safe recovery strategy

Separate release blockers from non-blocking improvements. A successful build alone is not sufficient. Unresolved critical security findings, data-loss/corruption risk, broken critical workflows, unsafe migrations or inability to start with valid production configuration are blockers.

Return one evidence-based state:
- Ready for intended use
- Ready with documented limitations
- Not ready for intended use
- Unable to determine fully

List checks actually run and all material unresolved risks.