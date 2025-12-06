{ pkgs, lib, ... }:

{
  home.packages =
    let
      com-google-chrome-desktop = pkgs.runCommand "com.google.Chrome.desktop" { } ''
        mkdir -p $out/share/applications
        cd $out/share/applications
        cp ${pkgs.google-chrome}/share/applications/com.google.Chrome.desktop .
        sed -i /NoDisplay=true/d com.google.Chrome.desktop
      '';

      hi-prio-com-google-chrome-desktop = lib.hiPrio com-google-chrome-desktop;
    in
    [
      hi-prio-com-google-chrome-desktop
      pkgs.google-chrome
    ];

  xdg.desktopEntries.google-chrome = {
    name = "";
    settings.Hidden = "true";
  };
}
