# Changelog

All notable changes to this repository will be documented in this file.

## 1.2.0 - 2026-09-12

### Added

- Optional `JuliusBrussee/caveman` integration under `integrations/caveman/`.
- Codex installer for upstream Caveman skills.
- Claude Code installer for the upstream Caveman plugin.
- `THIRD_PARTY.md` with Caveman attribution and licensing notes.

### Changed

- `CODEX.md` now defines how Caveman interacts with the repository's engineering skills.
- `CLAUDE.md` now defines how Caveman interacts with the repository's engineering skills.
- README now documents Caveman installation and precedence rules.

### Licensing

- Caveman engine/proxy runtime is not vendored. Upstream designated runtime directories use Business Source License 1.1; integration installs those components only from upstream when explicitly requested.

## 1.1.0 - 2026-09-12

### Added

- Native OpenAI Codex project skills under `.agents/skills/`.
- Native Claude Code project skills under `.claude/skills/`.
- `full-code-ui-review` master skill.
- `root-cause-debug` skill.
- `ui-ux-quality` skill.
- `security-hardening` skill.
- `refactor-code-quality` skill.
- `test-fix-verify` skill.
- `release-readiness` skill.
- Agent-specific skill discovery and invocation guidance.
- README skill matrix and usage examples.

### Changed

- Expanded `CODEX.md` with repository skill selection guidance.
- Expanded `CLAUDE.md` with project skill slash commands and selection guidance.

## 1.0.0 - 2026-09-12

### Added

- Universal full code, architecture, UI/UX, security and quality review prompt.
- Repository-wide `AGENTS.md` operating rules.
- `CODEX.md` instructions for Codex.
- `CLAUDE.md` instructions for Claude Code.
- `.github/copilot-instructions.md` for GitHub Copilot.
- `.cursorrules` for Cursor.
- UI/UX design constraints to avoid generic AI/SaaS visual defaults.
- Skill and tool discovery rules.
- Evidence-before-assumptions rules.
- Root-cause fixing and minimal-safe-change rules.
- Verification, testing and final-report requirements.
