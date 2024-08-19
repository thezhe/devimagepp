FROM ubuntu:noble
# hadolint ignore=DL3008,DL3013,DL3015
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y g++ golang shellcheck && \
    apt-get install --no-install-recommends -y cmake cppcheck curl git ninja-build python3-pip python3-yaml && \
    GOBIN=/usr/local/bin go install github.com/google/osv-scanner/cmd/osv-scanner@v1 && \
    GOBIN=/usr/local/bin go install github.com/rhysd/actionlint/cmd/actionlint@latest && \
    apt-get remove -y golang && \
    apt-get autoremove -y --purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    pip install --no-cache-dir --break-system-packages -U cmakelang cpplint
COPY dotfiles /
