FROM node:14-buster-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-client git git-core ca-certificates \
    && npm -g install @semantic-release/git @semantic-release/github semantic-release

ENTRYPOINT [ "/bin/bash"]
CMD [  ]
