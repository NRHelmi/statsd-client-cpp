{ pkgs ? import <nixpkgs>{}}:
with pkgs;

{
  statsd_cpp_client = stdenv.mkDerivation rec {
    name = "statsd-cpp-client-${version}";
    version = "0.0.1";
    src = ./.;
    nativeBuildInputs = [ cmake ];
  };
}
