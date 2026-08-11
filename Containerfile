FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ccache clang gdb lld mold patchelf valgrind && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
