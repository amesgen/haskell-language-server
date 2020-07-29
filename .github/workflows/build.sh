set -e

cabal update
cabal configure -O2 --ghc-options='-split-sections -fPIC' --enable-executable-static

INSTALL_ARGS='--installdir=artifacts --install-method=copy --overwrite-policy=always'

cabal install exe:haskell-language-server $INSTALL_ARGS
