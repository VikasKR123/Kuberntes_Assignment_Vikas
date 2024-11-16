FROM maven:3.8.1-openjdk-11-slim AS build

# WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the application on a slimmer Tomcat with JRE only ------------------------------------
FROM tomcat:9.0-jre11-slim

# Copy the WAR file from the build stage to Tomcat webapps directory
COPY --from=build /target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ 

EXPOSE 8080

CMD ["catalina.sh", "run"]

