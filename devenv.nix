{ pkgs, lib, config, inputs, ... }:

{
  dotenv.enable = true;
  packages = [
    pkgs.go-task
    pkgs.pandoc_3_6
    pkgs.quarto
    pkgs.rPackages.tinytex
  ];

  enterShell = ''
    pandoc --version
  '';
}
