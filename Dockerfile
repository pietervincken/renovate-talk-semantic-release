FROM node:14-buster-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-client git git-core ca-certificates \
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

ENTRYPOINT [ "/bin/bash"]
CMD [  ]