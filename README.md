# JenkinsImageFiles
This repo contains all the jenkins docker file to create a job generator job which deploy the simple HTML page into tomcat.


docker run --name myjenkins -p 8989:8080 -p 50000:50000 -v /var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock \
                -v $(which docker):/usr/bin/docker jenkins-DSL
