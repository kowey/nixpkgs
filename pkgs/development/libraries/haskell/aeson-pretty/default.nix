{ cabal, aeson, attoparsec, cmdargs, text, unorderedContainers
, vector
}:

cabal.mkDerivation (self: {
  pname = "aeson-pretty";
  version = "0.7.1";
  sha256 = "0gmm1kmdbanfyfdyij1gnazycp1x9703qfa5hgrz39j9046zg3y6";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson attoparsec cmdargs text unorderedContainers vector
  ];
  meta = {
    homepage = "http://github.com/informatikr/aeson-pretty";
    description = "JSON pretty-printing library and command-line tool";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
