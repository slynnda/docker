FROM centos:7.3.1611
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version="0.1.0"

RUN yum group install -y "Development Tools" && \
    yum -y install epel-release \
		   python-setuptools \
           libevent-devel \
           ncurses-devel \
           glib-c-static \
           vim \
           wget \
           telnet \
           dig \
           p7zip \
		   git && \
    easy_install supervisor && \
    mkdir -p /root/.vim/bundle && \
    git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/vundle && \
    git clone https://github.com/flazz/vim-colorschemes.git /root/.vim/bundle/vim-colorschemes && \
    git clone https://github.com/tpope/vim-sensible.git /root/.vim/bundle/vim-sensible && \
    git clone https://github.com/vim-airline/vim-airline.git /root/.vim/bundle/vim-airline && \
    git clone https://github.com/vim-airline/vim-airline-themes.git /root/.vim/bundle/vim-airline-themes && \
    git clone https://github.com/tpope/vim-fugitive.git /root/.vim/bundle/vim-fugitive && \
    git clone https://github.com/tpope/vim-surround.git /root/.vim/bundle/vim-surround && \
    git clone https://github.com/Matt-Deacalion/vim-systemd-syntax.git /root/.vim/bundle/vim-systemd-syntax && \
    git clone https://github.com/fatih/vim-go.git /root/.vim/bundle/vim-go && \
    git clone https://github.com/leshill/vim-json.git /root/.vim/bundle/vim-json && \ 
    git clone https://github.com/derekwyatt/vim-scala /root/.vim/bundle/vim-scala && \
    git clone https://github.com/chase/vim-ansible-yaml.git /root/.vim/bundle/vim-ansible-yaml && \
    git clone https://github.com/plasticboy/vim-markdown.git /root/.vim/bundle/vim-markdown && \
    git clone https://github.com/ekalinin/Dockerfile.vim.git /root/.vim/bundle/dockerfile

COPY src/vim/.vimrc /root/.vimrc
COPY src/bash/.bashrc /root/.bashrc
COPY src/bash/.bash_profile /root/.bash_profile

WORKDIR /root
