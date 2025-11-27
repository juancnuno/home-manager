{
  programs.vscode = {
    enable = true;

    profiles.default.userSettings = {
      breadcrumbs.enabled = false;
      chat.disableAIFeatures = true;

      editor = {
        cursorBlinking = "solid";
        minimap.enabled = false;
        rulers = [ 100 ];
        stickyScroll.enabled = false;
      };

      files.trimTrailingWhitespace = true;
      jdk.telemetry.enabled = true;

      window = {
        menuStyle = "custom";
        titleBarStyle = "native";
      };

      workbench.editor.enablePreview = false;
    };
  };
}
