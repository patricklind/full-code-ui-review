---
name: security-hardening
description: Perform evidence-based application and repository security review and implement safe fixes. Use for authentication, authorization, secrets, validation, injection, file handling, API security, tenant isolation, session/token handling, dependency risk and production hardening.
---

# Security Hardening

Invoke as `/security-hardening` for focused security work.

Review only risks relevant to the actual stack and attack surface:

- authentication/session/token weaknesses
- missing authorization/object-level checks and tenant isolation
- exposed secrets and sensitive logs
- SQL/NoSQL/command/template injection
- XSS, CSRF, SSRF, path traversal and unsafe redirects
- unsafe deserialization and file processing/upload
- insecure CORS/cookies/security headers
- weak random/token/crypto use
- unsafe shell/process invocation and file permissions
- dependency and supply-chain vulnerabilities
- brute-force/rate-control gaps where relevant

Rules:
- Enforce security at trusted/server boundaries, not only in UI.
- Validate untrusted input even with static types.
- Prefer allowlists for dangerous inputs where practical.
- Do not expose stack traces, secrets, SQL or internal paths to untrusted users.
- Separate confirmed vulnerabilities from potential/unverified concerns.
- Do not weaken security just to preserve broken compatibility.

For each confirmed issue, identify attack path, root cause, affected boundary, fix and verification. Add a regression test/check where practical.