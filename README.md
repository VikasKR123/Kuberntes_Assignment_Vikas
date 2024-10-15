# Kuberntes_Assignment_Vikas

# Steps to Deploy Java Service in Kubernetes with Tomcat
## 1. Prerequisites 
  JDK and Maven installed locally.
  Docker installed locally.
  Minikube or any cloud platform account for Kubernetes deployment.
  kubectl configured to manage the Kubernetes cluster.
  Tomcat for the web application.
## 2. Create a JAR for the Java Service
First, build the JAR file from your Java project using Maven.
``mvn clean install``
This will create a .jar file in the target directory of your project.
## 3.Write the Dockerfile
Create a Dockerfile to package your application along with Tomcat.
## 4. Build Docker Image
Use the following command to build the Docker image:
 ```docker build -t vikaskarbail/java-app:latest .```
## 6. Write Kubernetes YAML Files
Deployment YAML (deployment.yaml) and service.yaml
## 7. Deploy on Minikube
```minikube start```
```kubectl apply -f deployment.yaml```
```kubectl apply -f service.yaml```
```minikube service java-tomcat-service --url```
