FROM tomcat:8.5.15-jre8

COPY target/demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/demo_ci.war

CMD ["catalina.sh", "run"]

EXPOSE 8080