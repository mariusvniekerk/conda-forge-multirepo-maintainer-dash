FROM mcr.microsoft.com/vscode/devcontainers/miniconda:0-3

# [Choice] Node.js version: none, lts, 16, 14, 12, 10
ARG NODE_VERSION="none"
RUN if [ "${NODE_VERSION}" != "none" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

COPY envs/*.lock /tmp/conda-tmp/

RUN /opt/conda/bin/conda install -n base --file /tmp/conda-tmp/base-linux-64.lock
RUN /opt/conda/bin/mamba install -n base --file /tmp/conda-tmp/env-linux-64.lock



# COPY environment.yaml /tmp/conda-tmp/
# RUN /opt/conda/bin/mamba install -n base --file /tmp/conda-tmp/environment.yaml
