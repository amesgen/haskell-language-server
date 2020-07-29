set -e

cabal update

# cat > cabal.project.local <<EOF
# package haskell-language-server
#   ghc-options: -static -optl-static -optl-pthread -fPIC
# EOF

INSTALL_ARGS='--installdir=artifacts --install-method=copy --overwrite-policy=always'

cabal install $INSTALL_ARGS \
      -O2 --ghc-options='-split-sections'
