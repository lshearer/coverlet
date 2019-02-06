#!/usr/bin/env bash
set -euo pipefail
# Get directory for current script
cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $cwd

# Build project according to CONTRIBUTING.md
dotnet msbuild build.proj
# Attempt to generate coverage report
npx coverage-viewer test/coverlet.core.tests/coverage.json -s . -o ./coverage 
