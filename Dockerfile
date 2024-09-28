FROM ubuntu:noble
# hadolint ignore=DL3008,DL3013,DL3015
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y g++ golang && \
    apt-get install --no-install-recommends -y cmake cppcheck curl git ninja-build python3-pip python3-yaml xz-utils && \
    GOBIN=/usr/local/bin go install github.com/google/osv-scanner/cmd/osv-scanner@v1 && \
    pip install --no-cache-dir --break-system-packages -U cmakelang cpplint
COPY fs /
ADD https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz /usr/local/bin/zig.tar.xz
RUN cd /usr/local/bin && \
    tar -xJvf zig.tar.xz --strip-components=1 && \
    rm -f zig.tar.xz
RUN apt-get remove -y golang xz-utils && \
    apt-get autoremove -y --purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists
