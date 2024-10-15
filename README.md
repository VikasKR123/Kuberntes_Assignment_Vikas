# Kuberntes_Assignment_Vikas

# Steps to Deploy Java Service in Kubernetes with Tomcat
## 1. Prerequisites 
  JDK and Maven installed locally. <br>
  Docker installed locally.<br>
  Minikube or any cloud platform account for Kubernetes deployment.<br>
  kubectl configured to manage the Kubernetes cluster.<br>
  Tomcat for the web application.<br>
## 2. Create a JAR for the Java Service
First, build the JAR file from your Java project using Maven.<br>
<b>``mvn clean install``</b><br>
This will create a .jar file in the target directory of your project.
## 3.Write the Dockerfile
Create a Dockerfile to package your application along with Tomcat.
## 4. Build Docker Image
Use the following command to build the Docker image:<br>
<b> ```docker build -t vikaskarbail/java-app:latest .```<b>
## 6. Write Kubernetes YAML Files
Deployment YAML (deployment.yaml) and service.yaml
## 7. Deploy on Minikube
<b>```minikube start```</b><br>
<b>```kubectl apply -f deployment.yaml```</b><br>
```kubectl apply -f service.yaml```<br>
```minikube service java-tomcat-service --url```
