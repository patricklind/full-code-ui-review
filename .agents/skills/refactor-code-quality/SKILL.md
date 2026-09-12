---
name: refactor-code-quality
description: Improve maintainability, structure, readability, typing and architecture without changing intended behavior. Use for refactors, technical-debt cleanup, duplicate/dead code removal, large functions/components, unsafe typing and consistency improvements.
---

# Refactor & Code Quality

## Goals

Improve clarity and maintainability while preserving observable behavior.

Review:
- naming and module boundaries
- duplication and dead/obsolete code
- oversized functions/classes/components
- hidden side effects and mutable global state
- coupling and circular dependencies
- error-handling consistency
- unsafe types/casts and duplicated models
- magic values and environment-specific hardcoding
- unnecessary abstractions and dependencies

## Rules

- Establish behavior with tests/runtime evidence before large refactors.
- Prefer small composable functions and explicit interfaces.
- Prefer existing project conventions when sound.
- Do not create abstractions without multiple concrete uses or a clear boundary benefit.
- Do not mix unrelated formatting/reorganization with functional changes.
- Avoid framework migrations unless explicitly requested or technically unavoidable.
- Remove dependencies only after verifying they are unused.

## Verification

Run relevant tests, type checking, linting and build checks. Compare externally visible behavior before and after where practical. Review the diff for accidental churn.