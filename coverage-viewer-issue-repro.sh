#!/usr/bin/env bash
set -euo pipefail
# Get directory for current script
cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $cwd

dotnet msbuild build.proj
npx coverage-viewer test/coverlet.core.tests/coverage.json -s . -o ./coverage 
