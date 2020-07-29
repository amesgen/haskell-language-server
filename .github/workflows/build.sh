set -e

cabal update

cabal install exe:haskell-language-server \
      -O2 --ghc-options='-optl-static -optl-pthread -fPIC' \
      --installdir=artifacts --install-method=copy --overwrite-policy=always
