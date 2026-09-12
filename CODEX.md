# Codex Instructions

Use `PROMPT.md` as the canonical full review/fix framework and `AGENTS.md` as the canonical operating rules.

Before editing:

1. Inspect repository instructions, skills, tools, build scripts and tests.
2. Understand the project architecture and intended behaviour.
3. Establish a baseline using relevant commands.
4. Prefer evidence from runtime, tests, compiler/type-checker output, logs and source code over assumptions.

While editing:

- Fix root causes, not symptoms.
- Preserve working behaviour unless it is incorrect or unsafe.
- Prefer minimal safe changes.
- Do not overwrite unrelated user changes.
- Do not disable tests, linting, type checking, validation or security controls to make checks pass.
- Do not introduce unnecessary dependencies, services or abstractions.
- Use safe migrations for data/schema changes.
- Add regression tests for important fixes when practical.
- Follow existing repository conventions when they are safe and sensible.

For UI work, follow the design rules in `PROMPT.md`:

- avoid generic AI/SaaS design defaults
- use realistic domain content
- use coherent typography and 4px/8px spacing
- use restrained colour systems
- ensure explicit visible focus states
- support mobile-first responsiveness
- prevent clipping, broken wrapping and accidental horizontal scrolling
- prioritise usability and task completion over decorative modernisation

After editing:

1. Run relevant format/lint/type/build/test/security checks.
2. Inspect regressions.
3. Review the final diff.
4. Remove accidental or unrelated changes.
5. Report only what was actually verified.
6. State remaining limitations explicitly.
