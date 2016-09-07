### Development Container Deployments

This directory contains the Docker image source code for each of the development environment
images used by technicallyspeakiing.io. Each image derives from the base image whose identifier
on [Dockerhub](https://hub.docker.com) is `technicallyspeaking/dev-env-base`.

Eventually, the following images will be provided, alongside the base container:
 - `technicallyspeaking/dev-env-node`: Environment for NodeJS applications
 - `technicallyspeaking/dev-env-java`: Environment for Java applications
 - `technicallyspeaking/dev-env-python`: Environment for Python applications
 - `technicallyspeaking/dev-env-browser`: Environment for browser applications
 - `technicallyspeaking/dev-env-go`: Environment for Go applications
 - `technicallyspeaking/dev-env-haskell`: Environment for Haskell applications
 - `technicallyspeaking/dev-env-elixir`: Environment for Elixir applications

**Note**: I like to stay current, so I'm going to be rolling language versions for these images
forward as frequently as I can. I have not decided whether or not it makes sense for me to try to
maintain current stable images spanning multiple versions of language releases. I'm only one person
and don't have infinite time for such things. If you're interested in this, however, please contact me
at `contact.me@technicallyspeaking.io`.
