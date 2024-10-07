{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        char = "|";
      };
      scope = {
        enabled = true;
        show_start = true;
      };
      exclude = {
        buftypes = ["terminal" "nofile"];
        filetypes = [
          "help"
          "alpha"
          "dashboard"
          "yazi"
          "neo-tree"
          "Trouble"
          "trouble"
          "lazy"
          "mason"
          "notify"
          "toggleterm"
          "lazyterm"
        ];
      };
    };
  };
}
