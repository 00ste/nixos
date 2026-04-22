{ lib, stdenv, fetchgit, makeWrapper }:

stdenv.mkDerivation rec {
  pname = "dwl-custom";
  version = "2024-04-22";

  src = builtins.path {
		path = /home/stefano/code/dwl;
		name = "dwl-source";
  };

  buildPhase = ''
    make
  '';

  installPhase = ''
    mkdir -p $out/bin $out/share/xsessions
    install -Dm755 dwl $out/bin/dwl

    cat > $out/share/xsessions/dwl.desktop <<EOF
    [Desktop Entry]
    Name=Dwl
    Comment=Dynamic window manager (custom build)
    Exec=$out/bin/dwl
    Type=Application
    DesktopNames=Dwl
    EOF
  '';

  # Dwl does not link against any libraries, but we keep the wrapper
  # in case you add runtime dependencies later.
  nativeBuildInputs = [ makeWrapper ];
  meta = with lib; {
    description = "Custom‑built dwl (dynamic tiling Wayland compositor)";
    homepage    = "https://codeberg.org/dwl/dwl";
    license     = licenses.mit;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ 00ste ];
  };
}
