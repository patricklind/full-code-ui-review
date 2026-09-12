# Caveman integration

Optional integration with [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman).

Caveman complements this repository by reducing agent verbosity while preserving technical content. Use it as an output-efficiency layer; keep this repository's review, security, testing and verification rules authoritative for engineering quality.

## Codex

Install the upstream skills into Codex:

```bash
npx skills add JuliusBrussee/caveman --skill '*' -a codex --yes
```

After installation, use `/caveman` or the upstream commands supported by the installed skill set.

## Claude Code

Install the upstream Claude Code plugin:

```bash
claude plugin marketplace add JuliusBrussee/caveman
claude plugin install caveman@caveman
```

## Recommended combination

Use Caveman for concise communication and this repository for execution discipline:

- `full-code-ui-review`: broad engineering audit and repair
- `root-cause-debug`: evidence-driven debugging
- `security-hardening`: security remediation
- `test-fix-verify`: verification loop
- Caveman: shorter agent prose and optional upstream tooling

Conciseness must never remove security warnings, irreversible-action warnings, exact error strings, code, commands, numeric values or important limitations.

## Licensing

The upstream repository uses MIT licensing for its skill and general open-source portions, with Business Source License 1.1 applying to designated engine/runtime directories. This repository does not vendor the Caveman engine/proxy runtime. Install those components directly from upstream if you choose to use them.

See the upstream repository and its `LICENSE`, `LICENSE.BSL` and `LICENSING.md` for current terms.
