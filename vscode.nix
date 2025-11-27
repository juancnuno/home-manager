{
  programs.vscode = {
    enable = true;

    profiles.default.userSettings = {
      breadcrumbs.enabled = false;
      chat.disableAIFeatures = true;
      editor.cursorBlinking = "solid";
      editor.minimap.enabled = false;

      editor.rulers = [
        100
      ];

      editor.stickyScroll.enabled = false;
      files.trimTrailingWhitespace = true;
      jdk.telemetry.enabled = true;
      window.menuStyle = "custom";
      window.titleBarStyle = "native";
      workbench.editor.enablePreview = false;
    };
  };
}
