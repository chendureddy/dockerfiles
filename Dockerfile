FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install default-jdk
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-1>
RUN tar -xvzf apache-tomcat-10.0.27.tar.gz
RUN mv apache-tomcat-10.0.27 /usr/local/tomcat
COPY . /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
RUN chmod +x /usr/local/tomcat/bin/catalina.sh
