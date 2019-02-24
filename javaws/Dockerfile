FROM ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive; apt-get update && \
	apt-get install -y software-properties-common python-software-properties

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
  	 debconf-set-selections

RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  	 debconf-set-selections

RUN DEBIAN_FRONTEND=noninteractive; add-apt-repository ppa:webupd8team/java && \
	apt-get update && \
	apt-get install -y sudo oracle-java8-installer xterm

ADD ["exception.sites", "/root/.java/deployment/security/exception.sites"]
# d run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY -v /home/evgenyb/scratch:/data javaws
