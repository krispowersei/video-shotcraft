#!/usr/bin/env bash
# Install root test deps and the Remotion template deps, then run unit tests + a still render smoke.
set -e
D=$(cd "$(dirname "$0")/.." && pwd); cd "$D"
npm ci --silent && npm test
cd template && npm ci --silent && mkdir -p out && npx remotion still src/index.ts AiflPromo out/smoke.png --frame=30
echo "ready: $D/template/out/smoke.png"
