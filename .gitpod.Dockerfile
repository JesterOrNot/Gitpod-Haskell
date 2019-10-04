FROM gitpod/workspace-full

USER gitpod
# Installing Haskell
RUN sudo add-apt-repository -y ppa:hvr/ghc && \
    sudo apt-get update && \
    sudo apt-get install -y cabal-install-XXX ghc-YYY