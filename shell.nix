let
     nixpkgs = builtins.fetchTarball {
       # Hugo 0.88.1
       url = "https://github.com/NixOS/nixpkgs/archive/17d1c041284844c731f61cb3ecb3735f2bf33aab.tar.gz";
     };

in

{ pkgs ? import nixpkgs {} }:

with pkgs;
let
  hugo-theme-hello-friend-ng = runCommand "hugo-theme-hello-friend-ng" {
    pinned = builtins.fetchGit {
      url = "https://github.com/rhazdon/hugo-theme-hello-friend-ng";
      ref = "refs/heads/master";
      rev = "848b6879b3a2a201510bd11dadf37826ee038616";
    };

    patches = [ ];
    preferLocalBuild = true;
  }
    ''
cp -r $pinned $out
chmod -R u+w $out

for p in $patches; do
    echo "Applying patch $p"
    patch -d $out -p1 < "$p"
done
'';

in
mkShell {
  buildInputs = [
    hugo
  ];

  shellHook = ''
mkdir -p themes
ln -snf "${hugo-theme-hello-friend-ng}" themes/hello-friend-ng
'';

  # HUGO_ENV = "production";
}
