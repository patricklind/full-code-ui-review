# Claude Code Instructions

Use `PROMPT.md` as the canonical review/fix framework and `AGENTS.md` as the canonical operating rules.

## Project skills

Claude Code project skills live under `.claude/skills/` and can be invoked directly:

- `/full-code-ui-review` — complete repository-wide review and repair.
- `/root-cause-debug` — reproduce and fix bugs at the root cause.
- `/ui-ux-quality` — UI/UX, responsive design and accessibility quality gate.
- `/security-hardening` — evidence-based security review and remediation.
- `/refactor-code-quality` — maintainability/refactoring while preserving behavior.
- `/test-fix-verify` — baseline, repair failing checks and verify changes.
- `/release-readiness` — production/release readiness assessment.

Use the narrowest relevant skill for focused work. Use `/full-code-ui-review` for broad audits and "review/fix everything" tasks. Combine skills only when the work genuinely spans multiple domains.

## Optional Caveman integration

This repository includes an optional integration for `JuliusBrussee/caveman` under `integrations/caveman/`.

Install the upstream Claude Code plugin with:

```bash
claude plugin marketplace add JuliusBrussee/caveman
claude plugin install caveman@caveman
```

Use Caveman when concise output is useful. Caveman controls communication style and optional upstream tooling; it does not override this repository's correctness, security, testing or verification requirements.

Do not compress away security warnings, irreversible-action warnings, exact errors, commands, numeric values, constraints or unresolved limitations.

Before changing code:

1. Read project-specific instructions.
2. Discover available tools, skills and workflows.
3. Understand the project and establish a baseline.
4. Prefer evidence over assumptions.
5. Fix root causes rather than suppressing failures.
6. Preserve working behaviour and unrelated user changes.
7. Use the smallest safe change.
8. Run relevant validation after changes.
9. Never claim verification that did not occur.
10. Report remaining limitations explicitly.

For UI work, follow the design rules in `PROMPT.md` and `/ui-ux-quality`, including avoidance of generic AI/SaaS visual defaults, explicit focus states, coherent spacing/typography, restrained colour systems and mobile-first responsiveness.

When repository-specific instructions conflict with generic guidance, prefer the repository-specific rule unless doing so would clearly introduce a security or correctness defect.
