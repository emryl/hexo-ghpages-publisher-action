# Container image that runs your code
FROM node:20

LABEL "com.github.actions.name"="Hexo GitHub Pages Publisher Action"
LABEL "com.github.actions.description"="This GitHub action will handle the building and deploying process of a hexo project to a GitHub Pages enabled public repository on a custom domain."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/emryl/hexo-ghpages-publisher-action"
LABEL "homepage"="https://github.com/emryl/hexo-ghpages-publisher-action"
LABEL "maintainer"="mry"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]