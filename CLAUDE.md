# Claude Code Instructions

Use `PROMPT.md` as the canonical review/fix framework and `AGENTS.md` as the canonical operating rules.

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

For UI work, follow the design rules in `PROMPT.md`, including avoidance of generic AI/SaaS visual defaults, explicit focus states, coherent spacing/typography, restrained colour systems and mobile-first responsiveness.

When repository-specific instructions conflict with generic guidance, prefer the repository-specific rule unless doing so would clearly introduce a security or correctness defect.
