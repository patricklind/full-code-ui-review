---
name: refactor-code-quality
description: Improve maintainability, structure, readability, typing and architecture while preserving intended behavior. Use for refactors, technical-debt cleanup, duplicate/dead code removal, large functions/components, unsafe typing and consistency improvements.
---

# Refactor & Code Quality

Invoke as `/refactor-code-quality` for focused cleanup.

Review naming, module boundaries, duplication, dead code, oversized units, hidden side effects, mutable global state, coupling, circular dependencies, error-handling consistency, unsafe types/casts, magic values, hardcoding and unnecessary abstractions/dependencies.

Rules:
- Establish current behavior before broad refactors.
- Preserve public and observable behavior unless explicitly changing it.
- Prefer small focused functions/components and explicit interfaces.
- Follow existing sound conventions.
- Avoid abstractions without clear concrete value.
- Do not mix unrelated formatting churn with meaningful changes.
- Avoid framework/library migrations unless requested or necessary.
- Verify dependencies are actually unused before removal.

After refactoring, run relevant tests, lint, type checks and builds, then inspect the diff for unintended behavioral change or noise.