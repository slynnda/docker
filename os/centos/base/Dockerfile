# Core Information:
FROM centos:latest
MAINTAINER "Sophia Hudson" <sophia.hudson@technicallyspeaking.io>
LABEL version="0.1.0"

# Install base packages that environment base requires:
RUN yum update && \
    yum upgrade && \
    yum -y install epel-release && \
#    rpm -Uvh http://www.elrepo.org/elrepo-release-7.0.2.el7.elrepo.noarch.rpm && \ 
    yum -y reinstall shadow-utils && \
    yum -y install sudo \
                   man \
                   man-pages \
                   vim \
                   wget \
                   net-tools \
                   links \
                   nmap \
                   telnet \
                   p7zip \
                   vsftpd \
                   selinux-policy \
                   rkhunter
                   
# Create base directories for environment files:
RUN mkdir -p /usr/etc/technicallyspeaking/build && \
    mkdir -p /usr/lib/technicallyspeaking//build

# Expose port for ssh connections:
EXPOSE 22

