FROM gitpod/workspace-full:latest
USER gitpod
# Install ghc, cabal, stack, and hlint with brew
RUN brew install \
    ghc \
    cabal-install \
    haskell-stack \
    hlint
ENV PATH=/home/gitpod/.local/bin:$PATH
