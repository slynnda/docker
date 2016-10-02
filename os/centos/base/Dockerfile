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
                   p7zip

# Make a main directory for the user:
RUN mkdir /home/main

# Customize vim experience:
RUN mkdir -p /home/main/.vim/autoload /home/main/.vim/bundle && \
    curl -LSso /home/main/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    touch ~/.vimrc
COPY src/vim/.vimrc /home/main/
                   
# Create base directories for environment files:
RUN mkdir -p /usr/etc/technicallyspeaking/build && \
    mkdir -p /usr/lib/technicallyspeaking/build

# Expose port for ssh connections:
EXPOSE 22

