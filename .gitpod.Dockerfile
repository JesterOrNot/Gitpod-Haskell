FROM gitpod/workspace-full:latest
USER gitpod
RUN brew install \
    haskell-stack \
    ghc \
    cabal-install
RUN stack install \
    brittany \
    hlint
RUN git clone https://github.com/haskell/haskell-ide-engine --recurse-submodules \
    && cd haskell-ide-engine  \
    && stack install haskell-ide-engine \
    && cd .. \
    && rm -rf haskell-ide-engine
ENV PATH=/home/gitpod/.local/bin:$PATH
