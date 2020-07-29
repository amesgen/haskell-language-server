set -e

cabal update
cabal configure -O2 --ghc-options='-split-sections -fPIC' --enable-executable-static

INSTALL_ARGS='--installdir=artifacts --install-method=copy --overwrite-policy=always'

cabal install exe:haskell-language-server $INSTALL_ARGS

if [ $GHC_VERSION = '8.10.1' ]; then
    cabal install exe:haskell-language-server-wrapper $INSTALL_ARGS
fi
