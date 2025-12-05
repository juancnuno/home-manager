{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };

    ripgrep.enable = true;
  };

  xdg.desktopEntries.nvim = {
    name = "";
    settings.Hidden = "true";
  };
}
