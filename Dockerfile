FROM node:14-buster-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends git-core ca-certificates \
    && npx semantic-release
