{
  plugins.lspsaga = {
    enable = true;
    beacon = {
      enable = true;
    };
    ui = {
      border = "shadow";
      codeAction = "💡";
    };
    hover = {
      openCmd = "!xdg-open";
    };
    diagnostic = {
      borderFollow = true;
      diagnosticOnlyCurrent = false;
      showCodeAction = true;
    };
    symbolInWinbar = {
      enable = true; # Breadcrumbs
      showFile = false;
    };
    codeAction = {
      extendGitSigns = true;
      showServerName = true;
      onlyInCursor = true;
      numShortcut = true;
      keys = {
        exec = "<CR>";
        quit = ["<Esc>" "q"];
      };
    };
    lightbulb = {
      enable = true; # Disable?
      sign = true;
      virtualText = true;
    };
    implement = {
      enable = true;
    };
    rename = {
      autoSave = false;
      keys = {
        exec = "<CR>";
        quit = ["<C-k>" "<Esc>"];
        select = "x";
      };
    };
    outline = {
      autoClose = true;
      autoPreview = true;
      closeAfterJump = false;
      layout = "normal";
      winPosition = "right";
      keys = {
        jump = "e";
        quit = "q";
        toggleOrJump = "o";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "gd";
      action = "<cmd>Lspsaga finder def<CR>";
      options = {
        desc = "Goto definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "Goto references";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "gI";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        desc = "Goto implementation";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "gT";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        desc = "Type definition";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "Hover doc";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>co";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "Open outline";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "Code action";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "Line diagnostics";
        silent = true;
      };
    }
  ];
}
