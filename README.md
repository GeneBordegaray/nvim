## Overview

This is an NvChad-based Neovim configuration. The upstream `NvChad/NvChad` repository is loaded as a plugin through lazy.nvim, so only the files in this repository are tracked in Git.

## Getting Started On A New Machine

1. Clone the repository: `git clone https://github.com/GeneBordegaray/nvim.git ~/.config/nvim`
2. Install the pinned plugins: `nvim --headless "+Lazy! sync" +qa` (or launch Neovim once and let lazy.nvim run).
3. Everything is ready once lazy.nvim finishes; future launches reuse the synchronized plugin set described in `lazy-lock.json`.

## Updating Plugins Safely

1. Pull the latest config on each machine: `git pull`
2. To bump plugin versions, run `:Lazy update` (or `nvim --headless "+Lazy! update" +qa`)
3. Test your setup, then commit both your config edits and the updated `lazy-lock.json`
4. Push the changes so other machines can `git pull` and run `:Lazy sync` to match the lockfile

## Keeping Plugin Checkouts Clean

- Avoid editing plugin code inside `~/.local/share/nvim/lazy/*`. Fork a plugin and point the spec to your fork if you need custom changes.
- If lazy.nvim reports local changes during an update, clean the plugin directory with  
  `git -C ~/.local/share/nvim/lazy/<plugin> reset --hard HEAD && git -C ~/.local/share/nvim/lazy/<plugin> clean -fd`  
  or delete the directory and run `:Lazy sync`.

## Credits

- Inspired by the LazyVim starter template: https://github.com/LazyVim/starter
