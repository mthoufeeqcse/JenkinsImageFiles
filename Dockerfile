FROM jenkins
MAINTAINER Mohamed Thoufeeque

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh git-client:latest git:latest job-dsl:latest

USER root
COPY config.xml /var/jenkins_home/jobs/Job-Generator/




