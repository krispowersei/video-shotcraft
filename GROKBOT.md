# Grok Bot adaptations (branch `grokbot`)
Upstream: Vincentwei1021/video-shotcraft (Apache-2.0). Upstream code untouched; NOTICE/LICENSE retained.
| Upstream (Claude Code / Codex) | Grok Bot |
|---|---|
| `.claude-plugin/plugin.json` (Claude plugin manifest) | Left in place, ignored by Grok Bot; skill registered via SKILL.md + /home/box/agent-data/workflows/demo-studio/SKILL.md |
| `agents/openai.yaml` (Codex UI metadata, `$video-shotcraft` prompt) | Left in place, ignored; invoke by reading SKILL.md |
| `SKILL.md` (Chinese, Claude/Codex skill) | Moved verbatim to `SKILL.upstream.md`; new English `SKILL.md` with box paths + tool mapping |
| "ask the user to choose a mode" | Ask in chat / parent; default autonomous mode for demo polish |
| ```bash blocks in references | Run via Shell tool on the box |
No slash commands, hooks, MCP config or claude/codex CLI calls found (rg). Remaining "Claude Code & Codex" strings are marketing copy in gallery/demos only.
Verified: `npm test` 23/23 pass; Remotion still + 60-frame MP4 render from plain shell.
