{ pkgs, ... }:

{
  home.packages = [ pkgs.google-chrome ];

  xdg.desktopEntries = {
    "com.google.Chrome" = {
      exec = "${pkgs.google-chrome}/bin/google-chrome-stable --class=com.google.Chrome";
      icon = "google-chrome";
      name = "Google Chrome";
    };

    google-chrome = {
      name = "";
      settings.Hidden = "true";
    };
  };
}
