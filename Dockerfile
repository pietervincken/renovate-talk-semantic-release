FROM node:18-buster-slim

WORKDIR /opt

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl openssh-client git git-core ca-certificates

RUN npm install --global semantic-release\
    @semantic-release/git\
    @semantic-release/changelog\
    @semantic-release/commit-analyzer\
    @semantic-release/exec\
    @semantic-release/npm\
    @semantic-release/release-notes-generator\
    @google/semantic-release-replace-plugin\
    @semantic-release/github\
    conventional-changelog-conventionalcommits\
    @codedependant/semantic-release-docker

WORKDIR /opt

RUN curl "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
RUN ln -s /opt/kustomize /bin/kustomize

ENTRYPOINT [ "/bin/bash" ]
CMD [  ]