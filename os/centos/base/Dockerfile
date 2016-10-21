# Core Information:
FROM centos:latest
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version="0.1.0"

RUN yum group install -y "Development Tools" && \
    yum -y install epel-release \
		   supervisor \
                   libevent-devel \
                   ncurses-devel \
                   glib-c-static \
                   vim \
                   wget \
                   telnet \
                   dig \
                   p7zip \
		   git && \
    mkdir -p ~/.vim/bundle && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle && \
    git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes && \
    git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible && \
    git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline && \
    git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes && \
    git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive && \
    git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround && \
    git clone https://github.com/Matt-Deacalion/vim-systemd-syntax.git ~/.vim/bundle/vim-systemd-syntax && \
    git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go && \
    git clone https://github.com/leshill/vim-json.git ~/.vim/bundle/vim-json && \ 
    git clone https://github.com/derekwyatt/vim-scala ~/.vim/bundle/vim-scala && \
    git clone https://github.com/chase/vim-ansible-yaml.git ~/.vim/bundle/vim-ansible-yaml && \
    git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown && \
    git clone https://github.com/ekalinin/Dockerfile.vim.git ~/.vim/bundle/dockerfile

COPY src/vim/.vimrc ~/.vimrc
COPY src/bash/.bashrc ~/.bashrc
COPY src/bash/.bash_profile ~/.bash_profile

WORKDIR root

# Expose port for ssh connections:
EXPOSE 22

