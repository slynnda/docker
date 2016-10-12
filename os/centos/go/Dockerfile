FROM technicallyspeaking/dev-envs:base-centos-latest

# Install golang:
RUN mkdir -p /usr/lib/technicallyspeaking/build/go/dist
COPY src/go/dist/go1.7.1.linux-amd64.tar.gz  /usr/lib/technicallyspeaking/build/go/dist
RUN tar -C /usr/local -xzf /usr/lib/technicallyspeaking/build/go/dist/go1.7.1.linux-amd64.tar.gz
RUN mkdir -p ~/workspace/bin && \
    mkdir -p ~/workspace/src && \
    mkdir -p ~/workspace/pkg
ENV HOME /root
ENV PATH $PATH:/usr/local/go/bin
ENV GOBIN $HOME/workspace/bin
ENV GOPATH $HOME/workspace/src
