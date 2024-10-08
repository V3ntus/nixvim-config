{
  pkgs,
  lib,
  config,
  ...
}: {
  config = {
    # Aliases
    viAlias = true;
    vimAlias = true;

    # Setup clipboard support
    clipboard = {
      providers.xsel.enable = true;
      register = "unnamedplus";
    };

    opts = {
      # Relative line numbers
      number = true;
      relativenumber = true;

      # Keep visual indentation on wrapped lines
      breakindent = true;

      # Autoindenting
      smartindent = true;
      shiftwidth = 2;

      # Tab spaces
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;

      # Expand <Tab> to spaces
      expandtab = true;

      # Hide command line unless needed
      cmdheight = 0;

      # Enable incremental searching
      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # Decrease updatetime
      updatetime = 50; # faster completion

      # Disable text wrap
      wrap = false;

      # Better splitting
      splitbelow = true;
      splitright = true;

      # Insert mode completion options
      completeopt = ["menu" "menuone" "noselect" "noinsert"];

      # Undo history
      swapfile = false;
      backup = false;
      undofile = true;

      # Enable signcolumn to keep screen from jumping
      signcolumn = "yes";

      # Copy previous indentation on autoindenting
      copyindent = true;

      # Highlight current line
      cursorline = true;

      # Enable linematch diff algorithm
      diffopt.__raw = ''
        vim.list_extend(vim.opt.diffopt:get(), { "algorithm:histogram", "linematch:60" })
      '';

      # Disable '~' on nonexistent lines
      fillchars = {eob = " ";};

      # Enable fold with all code unfolded
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      # Always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 8;

      # Place column line for wrap guide
      colorcolumn = "120";

      # Reduce which-key timeout
      timeoutlen = 100;

      # Set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";

      # Cursor options
      guicursor = [
        "n-v-c:block"
        "i-ci-ve:block"
        "r-cr:hor20"
        "o:hor50"
        "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
        "sm:block-blinkwait175-blinkoff150-blinkon175"
      ];

      # Enable chars list
      list = true;
      listchars = "eol:↲,tab:|->,lead:·,space: ,trail:•,extends:→,precedes:←,nbsp:␣";

      # Maximum popup menu entries
      pumheight = 0;

      # Use conform-nvim for gq formatting. ('formatexpr' is set to vim.lsp.formatexpr(), so you can format lines via gq if the language server supports it)
      formatexpr = "v:lua.require'conform'.formatexpr()";
    };
    
    extraConfigLua = ''
      local opt = vim.opt
      local g = vim.g
      local o = vim.o
        -- Neovide
      if g.neovide then
        -- Neovide options
        g.neovide_fullscreen = false
        g.neovide_hide_mouse_when_typing = false
        g.neovide_refresh_rate = 165
        g.neovide_cursor_vfx_mode = "ripple"
        g.neovide_cursor_animate_command_line = true
        g.neovide_cursor_animate_in_insert_mode = true
        g.neovide_cursor_vfx_particle_lifetime = 5.0
        g.neovide_cursor_vfx_particle_density = 14.0
        g.neovide_cursor_vfx_particle_speed = 12.0
        g.neovide_transparency = 0.95
        g.neovide_window_blurred = true
        g.neovide_floating_blur_amount_x = 4.0
        g.neovide_floating_blur_amount_y = 4.0
        g.neovide_confirm_quit = true

        -- Neovide Fonts
        -- o.guifont = "MonoLisa Trial:Medium:h15"
        -- o.guifont = "CommitMono:Medium:h15"
        o.guifont = "JetBrainsMono Nerd Font:h14:Medium:i"
        -- o.guifont = "FiraMono Nerd Font:Medium:h14"
        -- o.guifont = "CaskaydiaCove Nerd Font:h14:b:i"
        -- o.guifont = "BlexMono Nerd Font Mono:h14:Medium:i"
        -- o.guifont = "Liga SFMono Nerd Font:b:h15"
      end
    '';
  };
}
