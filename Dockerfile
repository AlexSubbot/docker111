FROM ubuntu 20.04
RUN apt update -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN install tomcat9 -y
RUN apt install git -y
RUN git clone https://github.com/ripienaar/free-for-dev.git -y
RUN cd boxfuse-sample-java-war-hello/ -y
RUN mvn package -y
RUN cd target/
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
RUN /var/lib/tomcat9/webapps/

CMD ["mvn"]

EXPOSE 80




