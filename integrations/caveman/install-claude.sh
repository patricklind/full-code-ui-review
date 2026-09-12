#!/usr/bin/env bash
set -euo pipefail

claude plugin marketplace add JuliusBrussee/caveman
claude plugin install caveman@caveman

echo "Caveman plugin installed for Claude Code."
