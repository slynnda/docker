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
    git clone https://github.com/VundleVim/Vundle.vim.git /usr/lib/technicallyspeaking/vim/vundle/Vundle.vim && \
    cp -r /usr/lib/technicallyspeaking/vim/vundle/Vundle.vim ~/.vim/bundle/Vundle.vim
COPY src/vim/.vimrc /usr/lib/technicallyspeaking/vim/.vimrc
RUN cp -r /usr/lib/technicallyspeaking/vim/.vimrc ~/.vimrc

# Move 
WORKDIR root

# Expose port for ssh connections:
EXPOSE 22

