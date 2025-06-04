# AI Tooling

This project ships basic configuration stubs for a variety of AI editors and CLIs. Copy them to your global config directories or symlink them as needed.

## Quick Reference

| Tool | Canonical config path (checked first) | Core keys to set | Bare-bones template (YAML/JSON/MD) |
|------|--------------------------------------|-----------------|-----------------------------------|
| AIChat CLI | `~/.config/aichat/config.yaml` (or `%APPDATA%/aichat/config.yaml` on Windows) | `model`, `openai_api_key`, per-provider blocks | `yaml\nmodel: openai:gpt-4o-mini\nopenai_api_key: \\${OPENAI_API_KEY}\ntemperature: 0.7\nhistory: 10\n` |
| Aider CLI | `.aider.conf.yml` in repo root (falls back to home dir) | `model`, `read` (docs you want always loaded), optional alias map | `yaml\nmodel: gpt-4o-mini\nread: [CONTRIBUTING.md]\nalias:\n  - fast:gpt-4o-mini\n` |
| Codex CLI | `~/.codex/config.yaml` or `config.json` | `model` (or provider), `safeCommands`, `approvalMode` | `yaml\nmodel: openai:gpt-4o-mini\nsafeCommands:\n  - \"npm test\"\napprovalMode: auto-edit\n` |
| chatgpt.com/codex | none in repo; run `dev-setup/setup.sh` | env vars, tooling install | `setup.sh` with installs + `export OPENAI_API_KEY=$SECRET` |
| Windsurf | user-level Settings → `~/Library/Application Support/windsurf/settings.json` (macOS) or `%APPDATA%/Windsurf/settings.json`; project-scoped overrides via `.windsurf/settings.json` | `windsurf.autocompleteSpeed`, `windsurf.autoExecutionPolicy`, `cascade.mcpServers` etc. | `json\n{\n  \"windsurf.autocompleteSpeed\": \"default\",\n  \"cascade.mcpServers\": [\"http://localhost:11434/mcp\"]\n}\n` |
| Cursor | global `~/.cursor/mcp.json`; project overrides: `.cursor/mcp.json`, `.cursorrules`, `.cursorignore` | `model`, `mcpServers`, custom rules/limits | `json\n{\n  \"model\": \"gpt-4o-mini\",\n  \"mcpServers\": [\"http://localhost:11434/mcp\"]\n}\n` |
| VS Code Copilot | `.github/copilot-instructions.md` (repo-level) + optional `.vscode/settings.json` overrides | Natural-language guidelines; IDE settings like `github.copilot.enable` | `# Copilot Instructions\nPrefer functional components; no wildcard TS imports.\n` |

Set your `OPENAI_API_KEY` (and optional `ANTHROPIC_API_KEY` or `GROQ_API_KEY`) in a `.env` file derived from `.env.example`. Tools such as LiteLLM, AnythingLLM and OpenRouter can be configured by adjusting the API endpoints in these files.
