---
name: security-hardening
description: Perform evidence-based application and repository security review and implement safe fixes. Use for auth/authz, secrets, validation, injection, file handling, API security, dependency risk, tenant isolation, session/token handling and production hardening.
---

# Security Hardening

Review only risks relevant to the actual stack and attack surface.

## Priority checks

- authentication bypass and session/token weaknesses
- missing authorization/object-level checks and tenant isolation
- exposed secrets, credentials and sensitive logs
- SQL/NoSQL/command/template injection
- XSS, CSRF, SSRF, unsafe redirects and path traversal
- unsafe deserialization and file upload/processing
- insecure CORS/cookies/security headers
- weak random/token/crypto use
- unsafe shell/process invocation and file permissions
- dependency and supply-chain vulnerabilities
- missing brute-force/rate controls where relevant

## Rules

- Enforce security at trusted/server boundaries, not only in UI.
- Validate untrusted input even when compile-time types exist.
- Use allowlists where practical for dangerous inputs.
- Never expose stack traces, secrets, SQL or internal paths to untrusted users.
- Never invent vulnerabilities without evidence; distinguish confirmed findings from potential concerns.
- Do not weaken security to preserve broken compatibility.

## Fix and verify

For each confirmed issue: identify attack path, root cause, affected boundary, minimal safe fix and regression test/check where practical. Rerun relevant tests/scanners and verify that legitimate behavior remains intact.