let
     nixpkgs = builtins.fetchTarball {
       # Hugo 0.88.1
       url = "https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz";
     };

in

{ pkgs ? import nixpkgs {} }:

with pkgs;
let
  hugo-theme-hello-friend-ng = runCommand "hugo-theme-hello-friend-ng" {
    pinned = builtins.fetchGit {
      url = "https://github.com/rhazdon/hugo-theme-hello-friend-ng";
      ref = "refs/heads/master";
      rev = "fff3cc7bcd46476834e5a975e13dce0766c813bd";
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
