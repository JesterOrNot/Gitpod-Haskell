FROM dogwith1eye/haskell-ide-engine
# USER gitpod
RUN add-apt-repository -y ppa:hvr/ghc && \
    apt-get update && \
    apt-get install -y cabal-install ghc
# RUN brew install haskell-stack hlint
ENV PATH=/home/gitpod/.local/bin:$PATH
