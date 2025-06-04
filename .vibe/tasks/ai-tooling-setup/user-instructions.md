Copy the files under `dev-setup/` to your personal configuration directories:

```bash
mkdir -p ~/.config/aichat
ln -s $PWD/dev-setup/aichat-config.yaml ~/.config/aichat/config.yaml
ln -s $PWD/dev-setup/codex-config.yaml ~/.codex/config.yaml
```

Run `dev-setup/setup.sh` once to install Codex locally. Then set your API keys in a `.env` file based on `.env.example`.
