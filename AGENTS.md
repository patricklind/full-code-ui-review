# Agent Operating Rules

These rules apply to any coding agent working in this repository or using this framework.

## 1. Discover instructions and skills first

Before making changes, inspect the repository for relevant instructions, skills, tools, MCP servers, plugins, documentation, design systems, build scripts, tests, and automation.

Look for files and conventions such as:

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
- build files
- CI/CD configuration
- container files
- infrastructure definitions

Use relevant project-specific skills before inventing a replacement workflow.

## 2. Understand before changing

Determine what the project does, how it runs, how it is tested, how it is deployed, and which parts are critical.

Do not assume unfamiliar code is wrong merely because it differs from your preferred style.

## 3. Evidence before assumptions

Prefer evidence from:

1. Runtime behaviour
2. Tests
3. Compiler/type-checker output
4. Logs
5. Source code
6. Documentation
7. Configuration
8. Reproducible analysis

Do not present speculation as fact.

Use labels such as `Potential issue`, `Unverified`, or `Requires runtime verification` where appropriate.

## 4. Fix root causes

Do not:

- hide exceptions
- silence type errors with broad `any`
- disable lint rules just to pass checks
- skip failing tests
- add arbitrary delays to hide race conditions
- catch and ignore errors
- hide broken UI with CSS
- remove difficult functionality instead of repairing it

Find and fix the root cause.

## 5. Preserve working behaviour

Preserve working behaviour unless it is clearly incorrect, unsafe, violates requirements, or causes a verified usability problem.

Avoid unnecessary rewrites.

## 6. Prefer minimal safe changes

Use the smallest change that fully solves the problem.

Avoid framework migrations, large-scale reorganisations, new abstractions, or dependency replacements without a strong technical reason.

## 7. Never fake verification

Do not claim that tests pass, builds succeed, UI works, endpoints work, or the project is production-ready unless those statements were actually verified.

If verification is limited, say exactly what could not be verified.

## 8. Protect data and user changes

Do not destroy data, reset databases, rewrite history, force push, delete unrelated work, or overwrite uncommitted changes without explicit justification.

Use safe migrations and reversible strategies where appropriate.

## 9. Avoid over-engineering

Do not add services, frameworks, event buses, queues, caches, plugin systems, or abstractions unless the project clearly benefits from them.

Prefer simple, understandable solutions.

## 10. Code quality

Prefer:

- clear names
- small focused functions
- explicit interfaces
- early validation
- sensible composition
- reusable helpers where justified
- standard library functionality
- existing project conventions

Avoid:

- clever one-liners that reduce readability
- deep nesting
- giant functions/classes/components
- hidden global state
- boolean parameter explosions
- copy/paste logic
- premature abstraction
- premature optimisation
- magic constants
- unnecessary wrappers and indirection

## 11. UI/UX rules

When UI is present:

- avoid generic purple/indigo gradients and glowing SaaS borders
- avoid default card grids with shadows unless cards are structurally appropriate
- avoid placeholder names and lorem ipsum
- use realistic domain data
- use coherent spacing and typography systems
- maintain visible `:focus-visible` states
- support mobile-first responsiveness
- prevent clipping and accidental horizontal scrolling
- use restrained colour systems
- prefer task-oriented layouts over generic marketing grids
- do not sacrifice usability for decorative modernisation

## 12. Final verification

After changes, rerun relevant checks and compare against the baseline.

Verify as applicable:

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
- migrations
- builds
- startup
- smoke tests
- manual workflows

Review the final diff and remove accidental or unrelated changes before declaring completion.
