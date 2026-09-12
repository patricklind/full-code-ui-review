# Universal Full Code, Architecture, UI/UX, Security & Quality Review — Review, Fix and Verify

Perform a complete review of the provided project, repository, application, codebase, feature, module or set of files.

Adapt the review to the actual technology, project type, architecture and available tools. Do not assume the project is a web application. It may be frontend, backend, full-stack, mobile, desktop, API, CLI, script, library, plugin, automation, network automation, infrastructure-as-code, containerised service, monorepo, microservice, database project, prototype, legacy system or partially completed project.

Only apply review areas that are relevant to the actual project.

Your job is to:

1. Understand the project.
2. Discover relevant instructions, skills and tools.
3. Establish a baseline.
4. Identify problems.
5. Determine root causes.
6. Fix problems directly.
7. Improve the project where there is clear technical benefit.
8. Test and verify the changes.
9. Preserve intended behaviour.
10. Report exactly what changed and what could not be verified.

Do not stop at recommendations when a fix can be implemented safely.

---

# 1. SKILLS, TOOLS & INSTRUCTION DISCOVERY

Before modifying code, inspect the environment for repository-specific instructions and reusable capabilities.

Look for:

- `AGENTS.md`
- `CLAUDE.md`
- `CODEX.md`
- `.cursorrules`
- `.cursor/rules/`
- `.github/copilot-instructions.md`
- `CONTRIBUTING.md`
- `DEVELOPMENT.md`
- `ARCHITECTURE.md`
- `SECURITY.md`
- `README.md`
- `docs/`
- package manifests
- lockfiles
- build scripts
- test scripts
- CI/CD
- Docker/container files
- infrastructure configuration
- design-system documentation
- MCP servers
- plugins
- skills
- code-generation tools
- static-analysis tools

If instructions exist, read them before changing code.

Use relevant project-specific skills or tools instead of recreating an existing workflow manually.

Do not use unrelated skills merely because they are available.

Relevant capabilities may include repository search, shell access, Git, browser automation, screenshots, API clients, database clients, test runners, compilers, linters, formatters, security scanners, dependency scanners, profilers, container tools and infrastructure validators.

Prefer evidence obtained from tools over assumptions.

---

# 2. OPERATING RULES

## Understand before changing

Determine:

- project purpose
- languages and frameworks
- architecture
- applications/services/packages
- install procedure
- configuration
- build process
- startup process
- test process
- deployment process
- external dependencies
- critical workflows
- intended business rules

Do not assume unfamiliar code is incorrect because it differs from your preferred style.

## Evidence before assumptions

Prefer evidence from:

1. Runtime behaviour
2. Tests
3. Compiler/type-checker output
4. Logs
5. Source code
6. Project documentation
7. Configuration
8. Reproducible analysis

Do not report an unverified suspicion as a confirmed defect.

Use `Potential issue`, `Unverified`, or `Requires runtime verification` where necessary.

## Fix root causes

Do not:

- hide exceptions
- suppress type errors with broad `any`
- disable lint rules merely to pass checks
- skip failing tests to obtain green CI
- add arbitrary delays to hide race conditions
- catch and ignore errors
- hide broken UI using CSS
- remove functionality because it is difficult to repair

Find and fix the underlying problem.

## Preserve behaviour

Preserve working behaviour unless it is incorrect, unsafe, violates requirements, or causes a verified usability problem.

## Minimal safe change

Prefer the smallest change that fully solves the issue.

Avoid unnecessary rewrites, framework migrations, mass renaming, dependency replacement or project-wide reorganisation.

## Do not hide problems

Never disable tests, linting, type checking, validation or security checks simply to make the project appear healthy.

## No fake verification

Never claim that tests pass, builds succeed, the UI works, an endpoint works, there are no console errors, or the project is production-ready unless that statement was actually verified.

## Protect data and existing work

Do not destructively reset databases, delete data, rewrite migrations, force-push, rewrite history, or overwrite unrelated user changes unless explicitly required and safe.

Use safe migrations and reversible strategies where appropriate.

## Avoid over-engineering

Do not introduce extra services, queues, caches, plugin systems, frameworks, microservices, distributed systems or complex abstractions unless they clearly improve the project.

---

# 3. ESTABLISH A BASELINE

Before major changes, run relevant available checks such as:

- dependency installation
- startup
- compilation
- production build
- formatting
- linting
- static analysis
- type checking
- unit tests
- integration tests
- E2E tests
- security checks
- dependency audits
- migration validation
- container builds
- configuration validation
- infrastructure validation
- smoke tests

Use only checks relevant to the project.

Record commands executed, successes, failures, errors, warnings and pre-existing defects.

If the project cannot run because credentials, hardware, external infrastructure or services are unavailable, continue with static analysis and document the limitation.

---

# 4. COMPLETE CODE REVIEW

Review all relevant source code for:

- syntax errors
- compile errors
- type errors
- runtime errors
- broken imports
- invalid paths
- missing dependencies
- circular dependencies
- invalid references
- broken control flow
- unreachable code
- dead code
- duplicate code
- obsolete code
- deprecated APIs
- incomplete implementations
- placeholders
- TODO/FIXME items
- commented-out production code
- debug code
- unsafe fallbacks
- hardcoded values
- magic values
- hardcoded credentials
- hardcoded URLs
- environment assumptions
- incorrect defaults
- missing validation
- missing error handling
- silently ignored errors
- incorrect logging
- sensitive log data
- resource leaks
- memory leaks
- race conditions
- concurrency problems
- async bugs
- incorrect state management
- hidden side effects
- global mutable state
- excessive coupling
- poor separation of responsibilities
- oversized functions/classes/components
- excessive nesting
- inconsistent naming
- inconsistent coding patterns
- incorrect null/empty handling
- boundary errors
- incorrect date/time/timezone handling
- numerical precision problems
- encoding problems
- Unicode problems

Refactor when there is a clear technical benefit. Do not rewrite good code purely for stylistic preference.

---

# 5. ARCHITECTURE REVIEW

Review the architecture that actually exists.

Check:

- responsibility boundaries
- module boundaries
- dependency direction
- business-logic separation
- data-access patterns
- external integration boundaries
- configuration separation
- shared logic
- error-handling consistency
- validation consistency
- logging consistency
- public interface stability
- excessive coupling
- circular dependencies
- leaky abstractions

Make targeted architectural improvements where justified. Avoid unnecessary system-wide rewrites.

---

# 6. FUNCTIONAL REVIEW

Review relevant workflows such as:

- startup/shutdown
- input/output
- file processing
- import/export
- navigation
- authentication
- authorisation
- CRUD
- search/filter/sort/pagination
- background jobs
- schedulers
- queues
- APIs
- webhooks
- notifications
- configuration loading
- plugins
- network/device communication
- deployment
- rollback
- upgrades
- migrations

Check for broken workflows, missing steps, incorrect results, partial execution, duplicate execution, unsafe retries, lost state, data corruption, invalid transitions, incorrect permissions, unexpected side effects, weak recovery, missing timeouts, missing cleanup and incorrect rollback.

If a process can fail halfway through, ensure it rolls back safely or records the partial state clearly.

---

# 7. UI/UX DESIGN & CODE QUALITY RULES

Apply this section only when the project contains a graphical or interactive UI.

Treat these as strong defaults unless the existing brand, design system, platform conventions or explicit requirements require something else.

## STRICTLY FORBIDDEN — GENERIC AI DEFAULTS

Do not introduce:

- generic purple/indigo gradients
- futuristic SaaS glowing borders
- random neon effects
- excessive glassmorphism
- decorative gradient blobs
- default card grids with shadows unless cards are structurally appropriate
- card-inside-card layouts everywhere
- generic three-column SaaS feature grids
- excessive border radius
- excessive shadows
- placeholder names such as `John Doe`
- `Lorem Ipsum`
- `Acme Inc.`
- generic fake testimonials
- meaningless statistics
- generic feature lists
- fake domain-inappropriate data
- unpadded containers
- misaligned text
- arbitrary centred layouts
- pure `#000000` body text on pure white unless the design system explicitly requires it

Use realistic domain-appropriate content when sample data is necessary.

## Typography

Use a deliberate type scale.

Large headings should generally use strong weight and tight tracking, around `letter-spacing: -0.02em` where appropriate.

Body text should have comfortable line height and readable line length.

Avoid arbitrary font sizes and tiny secondary text.

## Spacing

Use a coherent 4px/8px grid, favouring values such as:

- 4px
- 8px
- 12px
- 16px
- 24px
- 32px
- 48px
- 64px

Use generous whitespace without wasting operational screen space.

## Colour system

Prefer a restrained system, approximately:

- 60% dominant neutral
- 30% structural secondary
- 10% intentional accent

Additional semantic colours are allowed for success, warning, error, information, status and charts.

Do not use the accent colour everywhere.

## Layout

Choose layouts based on information hierarchy and user tasks.

Prefer where appropriate:

- asymmetric layouts
- split screens
- master/detail
- sidebar/content
- minimalist list hierarchies
- operational tables
- contextual panels

Do not force generic SaaS marketing layouts onto operational tools.

## Interaction quality gates

All interactive elements must have appropriate states:

- default
- hover
- active
- focus
- disabled
- loading when relevant
- error when relevant
- selected when relevant

All buttons, links, inputs and custom controls must have visible `:focus-visible` indicators.

Never remove focus styling without an accessible replacement.

Use subtle micro-interactions where they clarify state changes. Typical transitions should remain short, generally around 150–250ms.

Do not apply `transition-all` blindly when more specific property transitions are appropriate.

Respect reduced-motion preferences.

## Mobile-first responsiveness

Never allow:

- text clipping
- broken wrapping
- controls outside the viewport
- accidental horizontal scrolling
- tiny touch targets
- dialogs extending beyond the viewport
- inaccessible navigation
- unreadable tables

Handle long URLs, emails, filenames, hostnames, IP addresses, UUIDs, device names and status messages appropriately.

---

# 8. ACCESSIBILITY REVIEW

Where relevant, inspect:

- semantic HTML
- keyboard navigation
- visible focus
- logical tab order
- accessible labels
- heading hierarchy
- contrast
- screen-reader behaviour
- accessible validation
- dialogs
- focus trapping/restoration
- alternative text
- non-colour indicators
- touch targets
- zoom support
- reduced-motion support
- ARIA

Prefer semantic HTML over unnecessary ARIA.

Do not claim WCAG compliance without sufficient evidence.

---

# 9. API REVIEW

Where relevant, inspect:

- routes
- HTTP methods
- request/response schemas
- status codes
- validation
- authentication
- authorisation
- pagination
- filtering
- sorting
- versioning
- errors
- timeouts
- retries
- rate limits
- idempotency
- documentation
- external clients

Validate untrusted input at trusted boundaries.

Enforce authorisation server-side before state changes.

Preserve compatibility where reasonably possible.

---

# 10. DATABASE & DATA REVIEW

Where relevant, inspect:

- schemas
- models
- migrations
- relationships
- constraints
- indexes
- queries
- transactions
- connection handling
- data validation
- retention
- audit data
- import/export
- backup/recovery assumptions

Look for corruption risk, missing constraints, duplicate/orphan records, unsafe cascades, N+1 queries, missing indexes, full scans, unbounded queries, partial writes, race conditions, incorrect types and unsafe migrations.

Use safe migrations for schema changes.

---

# 11. AUTHENTICATION & AUTHORISATION

Where relevant, inspect login/logout, registration, password handling, sessions, tokens, API keys, SSO, MFA, roles, permissions, object-level access, tenant isolation and administrative functionality.

Check for:

- authentication bypass
- missing authorisation
- UI-only access control
- privilege escalation
- cross-user access
- cross-tenant access
- token leakage
- weak sessions
- open redirects
- access after logout or account disablement

Trusted backend/service boundaries must enforce access control.

---

# 12. SECURITY REVIEW

Perform a security review appropriate to the project.

Check relevant risks such as:

- exposed credentials/secrets
- SQL/NoSQL injection
- command/code/template injection
- XSS
- CSRF
- SSRF
- path traversal
- unsafe redirects
- broken access control
- IDOR
- unsafe deserialisation
- unsafe file handling/uploads
- missing size limits
- weak cryptography
- insecure randomness
- cookie weaknesses
- CORS issues
- missing security headers
- sensitive errors/logs
- missing rate limiting
- brute-force risk
- dependency vulnerabilities
- supply-chain risks
- unsafe shell execution
- unsafe temporary files
- unsafe permissions
- excessive process privileges

Do not invent theoretical vulnerabilities without evidence.

---

# 13. PERFORMANCE REVIEW

Where relevant, investigate:

- inefficient algorithms
- CPU/memory use
- memory leaks
- blocking I/O
- duplicate requests
- excessive polling
- large responses/bundles/assets
- excessive rendering/state updates
- missing pagination
- slow/repeated/N+1 queries
- connection leaks
- cache problems
- startup time
- build time

Do not optimise purely from intuition. Prefer measurements, logs, profiling, or clearly demonstrated inefficiency.

---

# 14. RELIABILITY & ERROR HANDLING

Inspect error boundaries, exception handling, retries, timeouts, partial failures, cleanup, connection closure, temporary resources, recovery paths and diagnostics.

Never silently swallow errors.

Stop processing when continuing would create invalid state.

---

# 15. LOGGING, MONITORING & OBSERVABILITY

Where relevant, inspect:

- application/error/audit/access logs
- metrics
- health checks
- readiness checks
- tracing
- correlation IDs
- monitoring
- alerting

Never log passwords, secrets, authentication tokens or sensitive data unnecessarily.

Ensure health checks reflect actual intended health.

---

# 16. DEPENDENCY REVIEW

Check for missing, unused, duplicate, vulnerable, deprecated, abandoned, conflicting or incorrectly classified dependencies, missing lockfiles and invalid package metadata.

Do not upgrade everything blindly.

Before adding a dependency, ask whether the existing stack already solves the problem, whether the library is maintained, whether the licence is acceptable, whether its size is reasonable, whether it adds security risk and whether it duplicates existing functionality.

---

# 17. CONFIGURATION REVIEW

Inspect environment variables, defaults, development/production configuration, database/storage/auth/logging settings, proxies, ports, URLs, paths and secrets.

Avoid unsafe silent fallbacks.

Required configuration should fail clearly when absent.

Never place real secrets in example configuration.

---

# 18. BUILD, PACKAGING & DEPLOYMENT

Where relevant, inspect build scripts, installers, Docker, Compose, Kubernetes, IaC, CI/CD, startup scripts, migrations, reverse proxies, releases, updates and rollbacks.

Check for broken/non-reproducible builds, dev servers in production, root containers, embedded secrets, large runtime images, missing health checks, incorrect ports, unsafe permissions, unsafe deployment order and missing rollback capability.

---

# 19. TESTING REVIEW

Inspect existing tests for:

- failures
- flakiness
- skipped/disabled tests
- weak assertions
- outdated snapshots
- excessive mocking
- missing regression tests
- missing critical-path tests
- missing security/permission/validation/error/edge-case tests

When fixing a bug, add a regression test when practical.

Tests should validate meaningful behaviour rather than implementation trivia.

Never disable tests just to obtain green status.

---

# 20. CODE QUALITY RULES

Code should be readable, maintainable, predictable, testable, explicit, consistent and appropriately typed.

Prefer:

- clear names
- small focused functions/components
- explicit interfaces
- early validation
- early returns when clearer
- composition
- reusable helpers where justified
- standard library functionality
- existing project patterns

Avoid:

- clever one-liners that reduce readability
- deep nesting
- god classes/components
- giant functions
- hidden global state
- boolean parameter explosions
- copy/paste logic
- premature abstraction
- premature optimisation
- huge utility files
- magic constants
- unnecessary wrappers
- unnecessary indirection

Comments should explain why, constraints, security reasoning, external limitations or non-obvious business logic. They should not simply restate code.

Where static typing exists, prefer specific types, explicit public interfaces, narrow unions, validated external data and typed contracts. Avoid broad `any`, blind casts and unsafe assertions.

---

# 21. EDGE CASES

Review relevant cases such as empty/missing/null/undefined input, zero/negative/extreme values, long strings, Unicode, emojis, duplicates, invalid formats/dates, timezone boundaries, missing/empty/large/corrupt files, slow/failed networks, timeouts, partial responses, concurrency, repeated actions, expired sessions/tokens, missing permissions, large/empty datasets, interrupted processes and unexpected shutdowns.

Prioritise edge cases that can cause:

1. Security issues
2. Data loss
3. Data corruption
4. Crashes
5. Incorrect results
6. Broken workflows
7. Poor usability

---

# 22. CHANGE MANAGEMENT RULES

Keep changes logically scoped.

Avoid mixing feature work, repository-wide formatting, dependency upgrades and unrelated refactors unless required.

Do not produce enormous unrelated diffs.

Preserve existing formatting unless the project formatter dictates otherwise.

Do not overwrite unrelated uncommitted work.

---

# 23. PRIORITY ORDER

Prioritise work in this order:

1. Critical security vulnerabilities
2. Data loss/corruption risks
3. Authentication/authorisation failures
4. Crashes
5. Broken critical functionality
6. Incorrect output
7. Build/deployment failures
8. Data integrity problems
9. Integration failures
10. Major UI/UX problems
11. Accessibility
12. Reliability
13. Performance
14. Maintainability
15. Cosmetic inconsistencies
16. Optional improvements

Do not spend significant effort polishing visuals while critical defects remain unresolved.

---

# 24. VERIFICATION AFTER CHANGES

After fixes, rerun all relevant available checks and compare against the baseline.

Potential checks include:

- formatting
- linting
- static analysis
- type checking
- compilation
- unit tests
- integration tests
- E2E tests
- security scans
- dependency audits
- migration validation
- builds
- container validation
- startup
- smoke tests
- manual workflow verification

Verify as applicable that:

- the project builds
- the project starts
- existing functionality remains
- the target defect is fixed
- no new errors were introduced
- tests pass where possible
- permissions still work
- configuration is valid
- data remains compatible
- public interfaces remain compatible
- UI works across supported sizes
- keyboard navigation and focus states work
- no new overflow/clipping was introduced

If something cannot be verified, state the exact limitation.

---

# 25. REQUIRED FINAL REPORT

Provide a structured final report containing:

## Executive Summary

- project type
- overall condition
- major issues
- major fixes
- build status
- test status
- readiness assessment

## Project Understanding

- purpose
- technologies
- components
- architecture
- build/run/test process

## Skills & Tools Used

List only skills and tools actually used, with purpose and relevant result.

## Issues Found and Fixed

Group by Critical, High, Medium, Low and Improvement.

For each issue include:

- title
- severity
- location
- problem
- root cause
- impact
- fix
- verification

Do not include hypothetical findings as confirmed defects.

## Files Changed

List created, modified, moved and deleted files with reasons for significant changes.

## Functional Changes

Describe bugs fixed, workflows corrected, error handling, integrations and data behaviour.

## UI/UX Changes

Where relevant, describe layout, navigation, forms, responsiveness, accessibility, loading, empty/error states, feedback and design-system consistency.

## Security Changes

Where relevant, describe vulnerabilities, permissions, validation, secret handling, sessions, dependencies and configuration.

## Performance Changes

Where relevant, describe queries, rendering, algorithms, memory, network and build/resource improvements.

## Tests Added or Updated

Include test, behaviour, reason and result.

## Commands Executed

List only commands actually executed and their results.

## Remaining Issues

For every unresolved issue include description, severity, why it remains, what is required and recommended next step.

## Final Status

Choose one:

- Ready for intended use
- Ready with documented limitations
- Not ready for intended use
- Unable to determine fully

Base the conclusion only on verified evidence.

---

# 26. FINAL EXECUTION RULE

Do not stop after finding problems.

Do not stop after making changes.

Do not stop after the first successful build.

Do not stop because the happy path works.

Use this workflow:

1. Discover relevant instructions, skills and tools.
2. Understand the project.
3. Establish a baseline.
4. Inspect the codebase.
5. Identify issues.
6. Prioritise them.
7. Fix root causes.
8. Update/add relevant tests.
9. Build and test.
10. Inspect resulting errors/regressions.
11. Fix those problems.
12. Re-run validation.
13. Verify key workflows.
14. Review the final diff.
15. Remove accidental/unnecessary changes.
16. Produce the final report.

Continue iterating until relevant critical issues are resolved, available quality gates pass where reasonably possible, remaining limitations are documented, and no known regression introduced by the changes remains unresolved.

A green build alone is not proof of correctness.

A passing test suite alone is not proof of correctness.

A visually modern interface is not proof of good UX.

A hidden button is not authorisation.

A caught exception is not proper error handling.

A suppressed warning is not a fix.

A recommendation is not an implementation.

A workaround is not necessarily a root-cause fix.

Complete the task only after reviewing, fixing and verifying the project as thoroughly as the available environment reasonably permits.
