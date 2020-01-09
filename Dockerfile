FROM alpine:3.11.2

LABEL version="0.0.1"
LABEL maintainer="nownabe"
LABEL com.github.actions.name="Action Template"
LABEL com.github.actions.description="Template for GitHub Action"
LABEL com.github.actions.icon="file-text"
LABEL com.github.actions.color="red"

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
