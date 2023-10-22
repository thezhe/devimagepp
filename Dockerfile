FROM ubuntu:jammy

# Packages
# hadolint ignore=DL3008,DL3013
RUN apt-get update && \
    apt-get install --no-install-recommends -y build-essential cmake cppcheck cpplint flawfinder git python3-pip ssh wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir lizard cmakelang PyYAML

# Download binaries to /opt and symlink to /usr/local/bin
WORKDIR /tmp
RUN wget --progress=dot:giga https://github.com/oclint/oclint/releases/download/v22.02/oclint-22.02-llvm-13.0.1-x86_64-linux-ubuntu-20.04.tar.gz \
    https://github.com/facebook/infer/releases/download/v1.1.0/infer-linux64-v1.1.0.tar.xz \
    https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.2/clang+llvm-17.0.2-x86_64-linux-gnu-ubuntu-22.04.tar.xz
RUN for archive in *.tar.gz; do tar -C "/opt" -xvf "${archive}"; done && \
    for bin_dir in /opt/*/bin; do cp -s "${bin_dir}/." "/usr/local/bin" ; done

# Merge fs into filesystem
COPY fs/. /
