FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bison ccache clang debhelper flex g++-multilib gcc-multilib gdb libcups2-dev lld mold patchelf valgrind && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
