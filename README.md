# Neovim Configuration

This repository provides a modular and modern Neovim configuration, focused on productivity, code navigation, and extensibility. It leverages the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager for fast startup and easy plugin management.

## Features

- **Plugin Management**: Uses `lazy.nvim` for efficient plugin loading and updates.
- **LSP Support**: Pre-configured with `nvim-lspconfig` and related plugins for language server integration, autocompletion, and code actions.
- **UI Enhancements**: Includes statusline, bufferline, file explorer, dashboard, and more for a modern look and feel.
- **Productivity Tools**: Integrated fuzzy finder, git integration, session management, and multi-cursor editing.
- **Custom Keymaps**: Intuitive keybindings for window management, tabs, and plugin features.
- **Predefined Options**: Sensible defaults for indentation, line numbers, clipboard, splits, and appearance.

## Requirements

- [NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md) (>= 0.11.0)
- [NerdFonts](https://www.nerdfonts.com/font-downloads) (set it as your terminal font)
- [LazyGit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation)
- [Npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- [Ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- [Ollama](https://ollama.com/download) (to use local LLMs with CodeCompanion)

## Installation

1. Clone this repository into your `~/.config/nvim` directory
2. Start Neovim and run `:Lazy sync`
3. Restart Neovim to apply the configuration

## Structure

- `init.lua` — Entry point, loads core settings and plugins.
- `lua/lguindani/core/` — Editor options and keymaps.
- `lua/lguindani/plugins/` — Plugin specifications and configurations.

## Customization

Edit files in `lua/lguindani/core/` and `lua/lguindani/plugins/` to adjust settings or add plugins as needed.
