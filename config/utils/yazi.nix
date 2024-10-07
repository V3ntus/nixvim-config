{
  plugins.yazi = {
    enable = true;
    settings = {
      yazi_floating_window_winblend = 20;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Yazi<CR>";
      options = {
        noremap = true;
        desc = "Open explorer";
      };
    }
  ];
}
