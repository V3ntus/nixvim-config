{
  imports = [
    ./keymaps.nix
    ./options.nix

    # Bufferline plugins
    ./bufferlines/bufferline.nix # Snazzy bufferline for Nvim

    # Color schemes
    ./colorschemes/base16.nix # Uniform color scheme generator (currently gruvbox)

    # Nvim completion plugins
    ./completion/cmp.nix # Completion engine plugin
    ./completion/copilot.nix # Copilot completion source
    ./completion/lspkind.nix # vscode-like pictograms for built-in lsp

    # Git plugins
    ./git/diffview.nix # Single tabpage interface for easily cycling through diffs
    ./git/gitsigns.nix # Git integration and decorations for buffers
    ./git/lazygit.nix # Lazygit integration within nvim

    # Treesitter configs
    ./languages/treesitter/treesitter-context.nix # Show context of currently visible buffer contents
    ./languages/treesitter/treesitter-textobjects.nix # Syntax-aware text-objects
    ./languages/treesitter/treesitter.nix
    ./languages/nvim-lint.nix # Async linter for nvim
    ./languages/rustaceanvim.nix # Better rust nvim experience

    # Lazy plugin manager
    ./lazy/lazy.nix

    # Language server plugins
    ./lsp/conform.nix # lsp formatter plugin
    ./lsp/fidget.nix # UI for nvim notifications and LSP progress messages
    ./lsp/lsp.nix # Built-in LSP configuration
    ./lsp/lspsaga.nix # Enhanced LSP experience

    # Code snippets
    ./snippets/luasnip.nix

    # Statusline mods
    ./statusline/lualine.nix # Statusline configurator

    # Telescope find, filter, preview, pick. Extensible UI
    ./telescope/telescope.nix

    # UI plugins
    ./ui/alpha.nix # Startscreen
    ./ui/indent-blankline.nix # Show indent guides
    ./ui/nvim-notify.nix # Notifier system
    ./ui/web-devicons.nix # Icons needed for bufferline

    # Misc utilities
    ./utils/better-escape.nix # Remove timeout for some binds idk
    ./utils/illuminate.nix # Highlight other usages of words
    ./utils/mini.nix # Swiss-army knife libraries
    ./utils/neocord.nix # Discord RPC from Nvim
    ./utils/nvim-colorizer.nix # Color code highlighter
    ./utils/persistence.nix # Session persistence manager
    ./utils/todo-comments.nix # Highlight todo, bug, etc. comments
    ./utils/ultimate-autopair.nix # Autopair many characters
    ./utils/which-key.nix # Keybind helper
    ./utils/wilder.nix # cmdline menu helper
    ./utils/yazi.nix # yazi file explorer
  ];
}
