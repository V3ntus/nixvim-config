{pkgs, ...}: {

  opts = {
    enable = true;

    settings = {
      autoEnableSources = true;
      experimental = {ghost_text = true;};
      performance = {
        debounce = 60;
        fetchingTimeout = 200;
        maxViewEntries = 30;
      };

      sources = [
        {name = "nvim_lsp";}
        {
          name = "buffer";
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          keywordLength = 3;
        }
        {
          name = "path";
          keywordLength = 3;
        }
        {
          name = "luasnip";
          keywordLength = 3;
        }
      ];

      window = {
        completion = {border = "solid";};
        documentation = {border = "solid";};
      };
    };
  };
  extra = {
    packages = with pkgs.vimPlugins; [
      cmp-path
      cmp-nvim-lsp
      cmp-buffer
      cmp_luasnip
    ];
    config = ''
      local cmp = require'cmp'

      cmp.setup.buffer {
        sources = cmp.config.sources(
          {{ name = 'buffer' }}
        ),
      }
    '';
  };
}
