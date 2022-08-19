FROM node:14-buster-slim

WORKDIR /bin

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl openssh-client git git-core ca-certificates \
    && npm install npx semantic-release \
    && npm install \
    @semantic-release/git \
    @semantic-release/changelog \
    @semantic-release/commit-analyzer \
    @semantic-release/exec \
    @semantic-release/npm \
    @semantic-release/release-notes-generator \
    @google/semantic-release-replace-plugin \
    @semantic-release/github \
    conventional-changelog-conventionalcommits \
    @codedependant/semantic-release-docker

RUN curl "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash

ENTRYPOINT [ "/bin/bash" ]
CMD [  ]