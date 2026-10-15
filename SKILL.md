---
name: video-shotcraft
description: Use when a Grok Bot agent must polish a recorded product walkthrough or build a cinematic product promo with Remotion — shot recipe cards (zooms, 2.5D camera moves, callouts, captions, beat-synced cuts, sound design) applied to real screenshots/recordings.
---
# video-shotcraft (Grok Bot wrapper)
Fork of Vincentwei1021/video-shotcraft (Apache-2.0). Upstream procedure unchanged in `SKILL.upstream.md` (Chinese; read fully). Shot catalog: `references/`, gallery https://vincentwei1021.github.io/video-shotcraft/

**Box path:** `/workspace/demo-studio/tools/video-shotcraft` · Remotion project: `template/`

## Steps
1. Setup + smoke: `scripts/grokbot_setup.sh` (vitest 23 tests + Remotion still render).
2. Pick mode (upstream): template (`template/TEMPLATE.md`), autonomous (`references/pipeline.md`), or guided (`references/guided-free-creation.md`). For a demo-bot walkthrough polish, use autonomous unless the user wants to approve storyboards.
3. Copy `template/` to a work dir, e.g. `/workspace/demo-studio/work/<slug>/remotion`; put recordings/screenshots in its `public/`.
4. Compose shots in `src/` (use cards from `references/` and components from `assets/`), preview with `npx remotion studio src/index.ts`.
5. Render: `npx remotion render src/index.ts <CompositionId> out/<name>.mp4`.

## Inputs / outputs
- In: raw walkthrough MP4/webm or screenshots, narration audio, captions text, brand colors.
- Out: `<workdir>/remotion/out/*.mp4`.
