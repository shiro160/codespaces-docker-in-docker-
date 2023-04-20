# -------------------------------------------------------------------------------------------------------
# https://github.com/microsoft/vscode-dev-containers/blob/main/containers/ubuntu/.devcontainer/Dockerfile
# -------------------------------------------------------------------------------------------------------
FROM ubuntu:22.04

# Options for setup script
ARG INSTALL_ZSH="true"
ARG UPGRADE_PACKAGES="true"
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt update && apt install -y \
    git \
    curl \
    vim \
    htop \
    ca-certificates \

# Dockerをインストール
RUN curl -fsSL https://get.docker.com | sh
