{ pkgs, ... }:

{
  home.packages = [ pkgs.google-chrome ];

  xdg.desktopEntries = {
    "com.google.Chrome" = {
      exec = "${pkgs.google-chrome}/bin/google-chrome-stable";
      icon = "google-chrome";
      name = "Google Chrome";
      settings.StartupWMClass = "google-chrome";
    };

    google-chrome = {
      name = "";
      settings.Hidden = "true";
    };
  };
}
