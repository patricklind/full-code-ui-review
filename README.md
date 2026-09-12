# Full Code & UI Review

A universal, technology-agnostic review and fix framework for coding agents.

Use this repository when you want an AI coding agent to perform a systematic review of a project, find root causes, implement fixes, verify the result, and report only what was actually tested.

## Core principles

- Understand the project before changing it.
- Discover and follow repository-specific instructions, skills, tools, and workflows.
- Prefer evidence over assumptions.
- Fix root causes instead of hiding symptoms.
- Preserve working behaviour unless it is incorrect, unsafe, or clearly harmful.
- Make the smallest safe change that fully solves the problem.
- Never fake verification.
- Never disable tests, linting, type checking, validation, or security checks just to make a project appear healthy.
- Protect existing data and unrelated user changes.
- Avoid over-engineering.
- For UI work, avoid generic AI/SaaS visual defaults and use deliberate design systems.

## Files

- `PROMPT.md` — the full universal review/fix prompt.
- `AGENTS.md` — repository-wide agent operating rules.
- `CLAUDE.md` — Claude Code guidance.
- `.github/copilot-instructions.md` — GitHub Copilot instructions.
- `.cursorrules` — Cursor guidance.
- `CHANGELOG.md` — repository changes.
- `LICENSE` — MIT license.

## Suggested usage

Copy `PROMPT.md` into your coding agent, or place the relevant agent instruction file into the target repository.

The prompt is designed to adapt to:

- frontend applications
- backend applications
- full-stack systems
- APIs
- mobile applications
- desktop applications
- CLI tools
- scripts
- libraries
- plugins
- automation projects
- network automation
- infrastructure-as-code
- containerised services
- monorepos
- microservices
- database projects
- legacy systems
- prototypes and partially completed projects

## Review priority

1. Critical security vulnerabilities
2. Data loss/corruption risks
3. Authentication/authorisation failures
4. Crashes
5. Broken critical functionality
6. Incorrect output
7. Build/deployment failures
8. Data integrity problems
9. Integration failures
10. Major UI/UX issues
11. Accessibility
12. Reliability
13. Performance
14. Maintainability
15. Cosmetic inconsistencies
16. Optional improvements

## License

MIT
