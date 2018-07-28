with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "aws-demo";
    buildInputs = [
        jq
        awscli
   ];
}
