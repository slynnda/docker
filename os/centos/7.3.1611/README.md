### Development Container Deployments

This directory contains the Docker image source code for each of the development environment
images used by technicallyspeakiing.io. Each image derives from the base image whose identifier
on [Dockerhub](https://hub.docker.com) is `technicallyspeaking/dev-envs:base-centos-<branch>`, where `<branch>`
corresponds with the git branch the code is built from.

Eventually, the following images will be provided, alongside the base container:
 - `technicallyspeaking/dev-envs:node-centos-<branch>`: Environment for NodeJS applications
 - `technicallyspeaking/dev-envs:java-centos-<branch>`: Environment for Java applications
 - `technicallyspeaking/dev-envs:python-centos-<branch>`: Environment for Python applications
 - `technicallyspeaking/dev-envs:browser-centos-<branch>`: Environment for browser applications
 - `technicallyspeaking/dev-envs:go-centos-<branch>`: Environment for Go applications
 - `technicallyspeaking/dev-envs:haskell-centos-<branch>`: Environment for Haskell applications
 - `technicallyspeaking/dev-envs:elixir-centos-<branch>`: Environment for Elixir applications

**Note**: I like to stay current, so I'm going to be rolling language versions for these images
forward as frequently as I can. I have not decided whether or not it makes sense for me to try to
maintain current stable images spanning multiple versions of language releases. I'm only one person
and don't have infinite time for such things. If you're interested in this, however, please contact me
at `contact.me@technicallyspeaking.io`.
