FROM technicallyspeaking/dev-envs:base-centos-master
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version "0.1.0"

ENV NODE_VERSION=7.3.0
ENV HOME=/root
ENV NVM_DIR="$HOME/.nvm"

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash && \
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
    nvm install v7.3.0
