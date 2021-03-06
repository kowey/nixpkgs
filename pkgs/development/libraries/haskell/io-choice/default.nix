{ cabal, hspec, liftedBase, monadControl, transformers
, transformersBase
}:

cabal.mkDerivation (self: {
  pname = "io-choice";
  version = "0.0.5";
  sha256 = "19nr8kxcg98510cqgjn4c9sd8i9yz8fv4ryqg6lzzgpwqzkvx5ph";
  buildDepends = [
    liftedBase monadControl transformers transformersBase
  ];
  testDepends = [ hspec liftedBase monadControl transformers ];
  meta = {
    description = "Choice for IO and lifted IO";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
