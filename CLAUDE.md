# CLAUDE.md

Dotfiles repo managed with chezmoi. Target platforms: CachyOS (Arch) and Ubuntu.

## Chezmoi naming conventions

Files follow chezmoi prefix conventions — do not rename without understanding the impact:

| Prefix | Result |
|---|---|
| `dot_` | Becomes `.` in home dir (`dot_config/` → `~/.config/`) |
| `executable_` | File is deployed with executable bit set |
| `run_once_` | Script runs once per machine on `chezmoi apply` |
| `.tmpl` suffix | File is a Go template — supports `{{ .chezmoi.os }}` etc. |

## Structure

- `run_once_install-packages.sh.tmpl` — install script, one block per OS
- `dot_config/nvim/` — LazyVim config (lua)
- `dot_config/tmux/tmux.conf` — tmux config
- `dot_config/workmux/config.yaml` — global workmux layout
- `dot_local/bin/executable_tmux-sessionizer` — fzf session switcher

## Adding a new tool

1. Add install commands in `run_once_install-packages.sh.tmpl` for each OS block
2. Add config file under `dot_config/<tool>/`
3. Add relevant keybindings in `dot_config/nvim/lua/config/keymaps.lua` if needed
4. Update `dot_config/nvim/cheatsheet.md`

## Adding a neovim plugin

- Extra LazyVim preset → `dot_config/nvim/lua/config/lazy.lua` (spec block)
- Custom plugin → new file in `dot_config/nvim/lua/plugins/`

## Testing changes locally

```bash
chezmoi diff          # preview what would change
chezmoi apply         # apply changes to home dir
chezmoi apply -v      # verbose
```
