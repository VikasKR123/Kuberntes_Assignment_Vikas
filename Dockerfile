FROM tomcat:9.0-jdk11-openjdk

# COPY /target/docker-java-sample-webapp-1.0-SNAPSHOT.war /app 
COPY /target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war 
# /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
