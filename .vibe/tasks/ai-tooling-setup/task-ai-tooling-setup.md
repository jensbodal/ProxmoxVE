# AI Tooling Setup

This task adds configuration stubs and documentation so the repository works with multiple AI tools. It also introduces a minimal CI pipeline and offline smoke test.

## Included
- Placeholder configs for AIChat, Aider, Codex, Windsurf, Cursor and VS Code Copilot.
- `.env.example` listing API keys for multiple providers.
- Docs under `docs/ai-tooling.md` describing how to use these configs and switch models (LiteLLM, AnythingLLM, OpenRouter, etc.).
- GitHub Actions workflow `ci.yml` with `offline-check` and `full-test` jobs.
- `scripts/smoke.sh` script for linting and type-checking without network access.
- Existing Node tests renamed with `@net` so CI can skip them offline.
