let
     nixpkgs = builtins.fetchTarball {
       # Hugo 0.84.1
       url = "https://github.com/NixOS/nixpkgs/archive/860b56be91fb874d48e23a950815969a7b832fbc.tar.gz";
     };

in

{ pkgs ? import nixpkgs {} }:

with pkgs;
let
  hugo-theme-hello-friend-ng = runCommand "hugo-theme-hello-friend-ng" {
    pinned = builtins.fetchGit {
      url = "https://github.com/rhazdon/hugo-theme-hello-friend-ng";
      ref = "refs/heads/master";
      rev = "bc5c57112c3475d5292c6a6e34766d50b8e568b8";
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
