# Core Information:
FROM centos:latest
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version="0.1.0"

# Install base packages that environment base requires:
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install sudo \
                   vim \
                   wget \
                   telnet \
                   dig \
                   p7zip \
		   git

# Create base directories for environment files:
RUN mkdir -p /usr/etc/technicallyspeaking/ && \
    mkdir -p /usr/lib/technicallyspeaking/

# Add customized bashrc and bashprofile:
RUN mkdir -p /usr/etc/technicallyspeaking/bash
COPY src/bash/.bashrc /usr/etc/technicallyspeaking/bash
COPY src/bash/.bash_profile /usr/etc/technicallyspeaking/bash
RUN cp -r /usr/etc/technicallyspeaking/bash/.bash_profile ~/.bash_profile && \
    cp -r /usr/etc/technicallyspeaking/bash/.bashrc ~/.bashrc

# Customize vim experience:
RUN mkdir -p /usr/lib/technicallyspeaking/vim/vundle && \
    mkdir -p ~/.vim/bundle && \
    git clone https://github.com/VundleVim/Vundle.vim.git /usr/lib/technicallyspeaking/vim/vundle && \
    cp -r /usr/lib/technicallyspeaking/vim/vundle ~/.vim/bundle/vundle
RUN git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes && \
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
    git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
COPY src/vim/.vimrc /usr/lib/technicallyspeaking/vim/.vimrc
RUN cp -r /usr/lib/technicallyspeaking/vim/.vimrc ~/.vimrc

# Move 
WORKDIR root

# Expose port for ssh connections:
EXPOSE 22

