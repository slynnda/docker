FROM technicallyspeaking/dev-envs:base-centos-latest

RUN mkdir -p /usr/lib/technicallyspeaking/build/go/dist && \
    curl -LO https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz > /usr/lib/technicallyspeaking/build/go/dist/go1.7.1.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf /usr/lib/technicallyspeaking/build/go/dist/go1.7.1.linux-amd64.tar.gz \
    mkdir -p ~/workspace/bin && \
    mkdir -p ~/workspace/src && \
    mkdir -p ~/workspace/pkg
ENV HOME /root
ENV PATH $PATH:/usr/local/go/bin
ENV GOBIN $HOME/workspace/bin
ENV GOPATH $HOME/workspace/src
