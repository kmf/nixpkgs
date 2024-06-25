{ lib
, stdenv
, fetchFromGitHub
, accountsservice
, budgie
, gtk3
, intltool
, libgee
, libpeas
, meson
, ninja
, pkg-config
, sassc
, vala
, libgtop
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "budgie-systemmonitor-applet";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "prateekmedia";
    repo = "budgie-systemmonitor-applet";
    rev = "v${finalAttrs.version}";
    hash = "sha256-14n1zgshygfyh4yp4pc7n9g2am8n3nl2l0im3r9qr0hdlyagdyv4";
  };

  nativeBuildInputs = [
    intltool
    meson
    ninja
    pkg-config
    vala
  ];

  buildInputs = [
    budgie.budgie-desktop
    gtk3
    libgee
    libpeas
    libgtop
  ];

  meta = {
    description = "Budgie Applet to show cpu frequency, ram, swap, network and uptime.";
    homepage = "https://github.com/prateekmedia/budgie-systemmonitor-applet";
    license = lib.licenses.gpl3;
    platforms = lib.platforms.linux;
    maintainers = lib.teams.budgie.members;
  };
})
