FROM technicallyspeaking/dev-envs:base-centos-master
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version = "0.1.0"

ENV GO_DIST=go1.7.1.linux-amd64
ENV HOME /root

RUN wget -O /usr/local/$GO_DIST.tar.gz https://storage.googleapis.com/golang/$GO_DIST.tar.gz && \
    tar -xzf /usr/local/$GO_DIST.tar.gz -C /usr/local && \
    rm /usr/local/$GO_DIST.tar.gz && \
    mkdir -p $HOME/workspace/bin && \
    mkdir -p $HOME/workspace/src && \
    mkdir -p $HOME/workspace/pkg
ENV PATH $PATH:/usr/local/go/bin
ENV GOBIN $HOME/workspace/bin
ENV GOPATH $HOME/workspace
