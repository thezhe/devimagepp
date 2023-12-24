FROM ubuntu:jammy

# apt-get and pip
# hadolint ignore=DL3008,DL3009,DL3013
RUN apt-get update && \
    apt-get install --no-install-recommends -y build-essential git python3-pip ssh \
    # Homebrew deps
    procps curl file && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir cmake cmakelang ninja PyYAML

# Homebrew
RUN useradd -m -s /bin/bash linuxbrew && \
    echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
USER linuxbrew
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install cppcheck
USER root
RUN ln -fs /home/linuxbrew/.linuxbrew/bin/* /usr/local/bin

# Dotfiles
COPY dotfiles/. /
