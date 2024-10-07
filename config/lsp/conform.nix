{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        python = ["black"];
        nix = ["alejandra"];
        markdown = [
          [
            "prettierd"
            "prettier"
          ]
        ];
        rust = ["rustfmt"];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format buffer";
      };
    }
  ];
}
