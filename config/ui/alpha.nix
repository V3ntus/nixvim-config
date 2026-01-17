{
  plugins.alpha = {
    enable = true;
    theme = null;
    settings.layout = let
      padding = val: {
        type = "padding";
        inherit val;
      };
    in [
      (padding 4)
      {
        opts = {
          hl = "AlphaHeader";
          position = "center";
        };
        type = "text";
        val = [
          "                                                   "
          "@@@  @@@ @@@@@@  @@@  @@@ @@@@@@@ @@@  @@@  @@@@@@ "
          "@@!  @@@     @@! @@!@!@@@   @!!   @@!  @@@ !@@     "
          "@!@  !@!  @!!!:  @!@@!!@!   @!!   @!@  !@!  !@@!!  "
          " !: .:!      !!: !!:  !!!   !!:   !!:  !!!     !:! "
          "   ::    ::: ::  ::    :     :     :.:: :  ::.: :  "
          "                                                   "
          "               git@github.com:V3ntus               "
        ];
      }
      (padding 2)
      {
        type = "button";
        val = "  Find File";
        on_press = {
          __raw = "function() require('telescope.builtin').find_files() end";
        };
        opts = {
          keymap = [
            "n"
            "f"
            ":Telescope find_files <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "f";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
    ];
  };
}
