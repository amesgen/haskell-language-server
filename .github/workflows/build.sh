set -e

cabal update

cabal install exe:haskell-language-server \
      -O2 \
      --installdir=artifacts --install-method=copy --overwrite-policy=always
