FROM technicallyspeaking/dev-envs:base-centos-latest

ENV GO_DIST=go1.7.1.linux-amd64
ENV HOME /root

RUN mkdir -p /usr/lib/technicallyspeaking/build/go/dist && \
    wget -O /usr/local/$GO_DIST.tar.gz https://storage.googleapis.com/golang/$GO_DIST.tar.gz && \
    tar -xzf /usr/local/$GO_DIST.tar.gz && \
    rm /usr/local/$GO_DIST.tar.gz && \
    mkdir -p ~/workspace/bin && \
    mkdir -p ~/workspace/src && \
    mkdir -p ~/workspace/pkg
ENV PATH $PATH:/usr/local/go/bin
ENV GOBIN $HOME/workspace/bin
ENV GOPATH $HOME/workspace
