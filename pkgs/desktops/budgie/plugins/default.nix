{ callPackage }: {
  budgie-analogue-clock-applet = callPackage ./budgie-analogue-clock-applet { };
  budgie-media-player-applet = callPackage ./budgie-media-player-applet { };
  budgie-systemmonitor-applet = callPackage ./budgie-systemmonitor-applet { };
  budgie-user-indicator-redux = callPackage ./budgie-user-indicator-redux { };
}
