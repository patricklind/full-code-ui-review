# GitHub Copilot Instructions

Use `PROMPT.md` as the canonical project-review framework and `AGENTS.md` as the operating-rule source.

Core rules:

- Understand the project before editing.
- Follow repository-specific instructions first.
- Prefer evidence over assumptions.
- Fix root causes rather than suppressing symptoms.
- Preserve working behaviour and unrelated user changes.
- Make the smallest safe change that fully solves the problem.
- Do not disable tests, linting, type checking, validation or security checks just to obtain a passing result.
- Do not claim tests/build/runtime/UI verification that was not actually performed.
- Avoid unnecessary dependencies and abstractions.
- Protect data and use safe migrations where relevant.
- Add/update regression tests for important bug fixes when practical.

For UI work:

- avoid generic purple/indigo gradients, glowing SaaS borders and excessive glassmorphism
- avoid default card grids unless the content structure calls for cards
- use realistic domain content rather than placeholder names/lorem ipsum
- use coherent typography and a 4px/8px spacing system
- use a restrained colour palette with intentional accents
- provide explicit visible `:focus-visible` states
- support mobile-first responsiveness
- prevent clipping, awkward wrapping and accidental horizontal scrolling
- prioritise usability and information hierarchy over visual novelty

After changes, run all relevant checks available in the project and report only verified results.
