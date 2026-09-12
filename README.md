# Full Code & UI Review

A universal, technology-agnostic review and fix framework for coding agents — with native project skills for **OpenAI Codex** and **Claude Code**.

Use this repository when you want an AI coding agent to systematically understand a project, find root causes, implement fixes, verify the result, and report only what was actually tested.

## Core principles

- Understand the project before changing it.
- Discover and follow repository-specific instructions, skills, tools and workflows.
- Prefer evidence over assumptions.
- Fix root causes instead of hiding symptoms.
- Preserve working behaviour unless it is incorrect, unsafe or clearly harmful.
- Make the smallest safe change that fully solves the problem.
- Never fake verification.
- Never disable tests, linting, type checking, validation or security checks just to make a project appear healthy.
- Protect existing data and unrelated user changes.
- Avoid over-engineering.
- For UI work, avoid generic AI/SaaS visual defaults and use deliberate design systems.

## Agent support

### OpenAI Codex

Repository skills are stored in:

```text
.agents/skills/<skill-name>/SKILL.md
```

Codex can discover and select these skills based on their descriptions.

### Claude Code

Project skills are stored in:

```text
.claude/skills/<skill-name>/SKILL.md
```

They can be selected automatically or invoked directly with slash commands such as:

```text
/full-code-ui-review
/root-cause-debug
/ui-ux-quality
```

## Included skills

| Skill | Purpose |
| --- | --- |
| `full-code-ui-review` | Full repository-wide review, repair and verification |
| `root-cause-debug` | Reproduce failures and fix the actual root cause |
| `ui-ux-quality` | UI/UX, responsive design, accessibility and non-generic visual quality |
| `security-hardening` | Evidence-based security review and remediation |
| `refactor-code-quality` | Refactoring and maintainability without unintended behaviour changes |
| `test-fix-verify` | Baseline, failing checks, regression tests and final verification |
| `release-readiness` | Production/release readiness and blocker assessment |

Both Codex and Claude Code receive the same core quality model while retaining agent-specific discovery/invocation paths.

## Caveman integration

Optional integration with [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) adds a token-conscious communication layer on top of this framework.

### Codex

```bash
npx skills add JuliusBrussee/caveman --skill '*' -a codex --yes
```

Or run:

```bash
./integrations/caveman/install-codex.sh
```

### Claude Code

```bash
claude plugin marketplace add JuliusBrussee/caveman
claude plugin install caveman@caveman
```

Or run:

```bash
./integrations/caveman/install-claude.sh
```

Caveman controls conciseness. This repository continues to control engineering quality, security, testing and verification. Compression must never remove critical warnings, exact errors, commands, numeric values, limitations or destructive-action context.

See `integrations/caveman/README.md` and `THIRD_PARTY.md` for integration and licensing notes.

## Repository files

- `PROMPT.md` — expanded universal full review/fix framework.
- `AGENTS.md` — repository-wide agent operating rules.
- `CODEX.md` — Codex guidance and skill map.
- `CLAUDE.md` — Claude Code guidance and slash-command skill map.
- `.agents/skills/` — native Codex project skills.
- `.claude/skills/` — native Claude Code project skills.
- `integrations/caveman/` — optional Caveman integration and installers.
- `.github/copilot-instructions.md` — GitHub Copilot instructions.
- `.cursorrules` — Cursor guidance.
- `THIRD_PARTY.md` — third-party attribution and license notes.
- `CHANGELOG.md` — repository changes.
- `LICENSE` — MIT license.

## Suggested usage

### Full review

Use `full-code-ui-review` when the task is broad: full audit, full code/UI review, production hardening, or "find and fix everything".

### Focused work

Use the narrowest skill for targeted tasks. For example, use `root-cause-debug` for a specific regression instead of loading the entire full-review workflow.

Skills can be combined when a task genuinely crosses domains, for example:

```text
full-code-ui-review + security-hardening + test-fix-verify
```

or in Claude Code:

```text
/security-hardening
/test-fix-verify
```

## Supported project types

The framework adapts to:

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

Only relevant review dimensions should be applied. A CLI tool should not be forced through a web UI checklist, and a static frontend should not be forced through database rules it does not use.

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

## UI/UX philosophy

The framework explicitly rejects common generic AI-design defaults such as automatic purple/indigo gradients, glowing SaaS borders, meaningless card grids, excessive glassmorphism and fake placeholder content.

UI changes should instead be based on the project's real information hierarchy, users and tasks, with coherent typography, spacing, responsive behavior, accessibility and realistic data.

## Verification philosophy

A green build is not proof of correctness.

A passing test suite is not proof that untested critical behaviour works.

A hidden UI control is not authorisation.

A swallowed exception is not error handling.

A recommendation is not a completed fix.

Agents must distinguish verified results from assumptions and document anything they could not test.

## License

MIT
