FROM gitpod/workspace-full:latest
USER gitpod
RUN sudo add-apt-repository -y ppa:hvr/ghc && \
    sudo apt-get update && \
    sudo apt-get install -y cabal-install ghc
RUN brew install haskell-stack hlint
ENV PATH=/home/gitpod/.local/bin:$PATH
