FROM jenkins/jenkins:lts-jdk11
RUN docker exec -u 0 -it mycontainer bashUSER root
RUN curl -fsSLO https://download.docker.com/linux/static/edge/x86_64/docker-19.03.9.tgz \
  && tar xzvf docker-19.03.9.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-19.03.9.tgz
 
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

