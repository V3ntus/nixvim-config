{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # C++
        clangd = {
          enable = true;
        };

        # Nix
        nil-ls = {
          enable = true;
        };

        # Python
        pyright = {
          enable = true;
        };
        ruff-lsp = {
          enable = true;
        };

        # Rust (automatically configured with rustaceanvim)
        # rust-analyzer = {};
      };
    };
  };

  extraConfigLua = ''
    local _border = "shadow"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    }

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
