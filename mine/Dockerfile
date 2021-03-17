FROM centos

ARG user=application

RUN yum -y install httpd unzip
RUN yum -y install wget
RUN yum -y install git
RUN git clone https://github.com/mdn/beginner-html-site-styled.git
RUN mv beginner-html-site-styled /var/www/html/

#metadata
LABEL maintainer="SD"
LABEL random="ewdijw"
LABEL cenas="oheah"

ENV project beginner-html-site-styled

#chnages directory 
WORKDIR /var/www/html

#create a new user and make the user owner of something
#chown user:group on folder and do it recoursivly
RUN useradd ${user} && chown ${user}:${user} /var/www/html -R
#changes to another user
USER ${user}
#
RUN rm beginner-html-site-styled/README.md

#chane to root so the apache can be run
USER root
COPY file.sh /file.sh

RUN chmod +x /file.sh
#starta apavhe service in foreground so the container stays alive

#CMD /file.sh
CMD apachectl -DFOREGROUND




#build
#docker build -t myapp:v7 --build-arg user=sonia .
#see full info
#docker ps --no-trunc
#chmod 
