FROM ubuntu:jammy

# apt-get and pip
# hadolint ignore=DL3008,DL3013
RUN apt-get update && \
    # apt-get dev packages
    apt-get install --no-install-recommends -y build-essential cppcheck cpplint flawfinder git python3-pip ssh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    # pip dev packages
    pip install --no-cache-dir cmake cmakelang lizard PyYAML

# Dotfiles
COPY dotfiles/. /
