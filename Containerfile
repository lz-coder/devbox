ARG VERSION=40

FROM registry.fedoraproject.org/fedora-toolbox:${VERSION}

LABEL VERSION=0.1 \
      AUTHOR=lzcoder \
      EMAIL=lzcoder@proton.me

RUN dnf upgrade \
    && dnf install -y gh htop glances zed helix

RUN dnf install --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' \
     && --setopt='terra.gpgkey=https://repos.fyralabs.com/terra$releasever/key.asc' terra-release