FROM ubuntu:20.04
RUN apt update -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN install tomcat9
RUN apt install git
RUN git clone https://github.com/ripienaar/free-for-dev.git
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN cd target/
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
RUN /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["mvn"]






