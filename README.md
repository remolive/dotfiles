# dotfiles

Personal dev environment config managed with [chezmoi](https://chezmoi.io). Built for multi-session Claude Code workflows with git worktrees, focused on Ruby on Rails + React/TypeScript development.

---

## Tools

| Tool | Role |
|---|---|
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer — sessions, windows, panes |
| [workmux](https://github.com/raine/workmux) | Orchestrates git worktrees + tmux windows for parallel Claude sessions |
| [neovim](https://neovim.io) + [LazyVim](https://lazyvim.org) | Editor with LSP, fuzzy search, file explorer |
| [lazygit](https://github.com/jesseduffield/lazygit) | Git TUI with diff preview, integrated in neovim |
| [lazydocker](https://github.com/jesseduffield/lazydocker) | Docker TUI, opens as a float in neovim |
| [yazi](https://github.com/sxyazi/yazi) | File manager TUI |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder — used by tmux-sessionizer |
| [fish](https://fishshell.com) | Default shell — autocompletion, syntax highlighting |

### Neovim extras (LazyVim)

- **Languages**: Ruby, TypeScript, Tailwind CSS, JSON, YAML
- **Formatting**: Prettier
- **Linting**: ESLint
- **Rails**: vim-rails (navigation), vim-endwise (auto-close blocks)

---

## Config overview

```
dot_config/
├── nvim/
│   ├── init.lua                    # LazyVim entrypoint
│   ├── cheatsheet.md               # Personal cheatsheet (<leader>?)
│   └── lua/
│       ├── config/
│       │   ├── lazy.lua            # Plugin loader + LazyVim extras
│       │   ├── keymaps.lua         # Custom keybindings
│       │   └── options.lua         # Editor options
│       └── plugins/
│           ├── tools.lua           # cheatsheet.nvim, vim-tmux-navigator
│           └── rails.lua           # vim-rails, vim-endwise
├── tmux/tmux.conf                  # Splits, status bar, Ctrl+f sessionizer
├── lazygit/config.yml              # Editor, theme, delta pager
└── workmux/config.yaml             # Default pane layout (claude+nvim+lazygit+lazydocker)

dot_local/bin/
└── tmux-sessionizer                # fzf project switcher (Ctrl+f in tmux)
```

### Key bindings

Keybindings are inspired by VSCode conventions where possible (`Ctrl+s`, `Ctrl+p`, buffer navigation...).

| Shortcut | Action |
|---|---|
| `Ctrl+f` | Fuzzy switch between tmux sessions/projects |
| `Ctrl+h/j/k/l` | Navigate between tmux panes and neovim splits seamlessly |
| `<leader>?` | Personal cheatsheet float |
| `<leader>gg` | Lazygit float |
| `<leader>gd` | Lazydocker float |
| `<leader>ff` | Find files (telescope) |
| `<leader>fg` | Grep in project |
| `<leader>e` | File explorer (neo-tree) |
| `Ctrl+s` | Save file |

---

## Requirements

- Linux (CachyOS/Arch or Ubuntu)
- `git`
- `curl`
- `bash`


---

## Install

**On a new machine:**

```bash
# 1. Install chezmoi
curl -sfL https://chezmoi.io/get | sh

# 2. Apply dotfiles (replace with your repo URL)
chezmoi init --apply https://github.com/you/dotfiles
```

chezmoi will prompt for your name and email, then run the install script automatically.

**First launch:**

```bash
# Start tmux
tmux

# Open neovim — lazy.nvim will download all plugins on first run
nvim
```

**Local development (after cloning):**

```bash
git clone https://github.com/you/dotfiles ~/dotfiles
chezmoi init --source ~/dotfiles --apply
```
