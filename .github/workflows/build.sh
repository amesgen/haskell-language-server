cabal update
cabal install exe:haskell-language-server \
      -O2 --ghc-options='-split-sections -static -optl-static -optl-pthread -fPIC' \
      --installdir=artifacts --install-method=copy --overwrite-policy=always
