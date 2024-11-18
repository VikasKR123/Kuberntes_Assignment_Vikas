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

To reduce the size of the Docker image, I used a <b>multi-stage build</b> technique. Multi-stage builds optimize the image by dividing it into stages. In this approach, all intermediate stages are used only during the build process and are not included in the final image. The intermediate stages are converted to binary content, and only the necessary binaries or artifacts from these stages are carried over to the final image, significantly reducing its size.

![IMG_20241118_115343](https://github.com/user-attachments/assets/ea799cd5-c1ef-421e-9c91-3c2c3ff86433)


In my Dockerfile I use a multi-stage build process to optimize the image. In the first stage, I install the necessary packages required to build my project, compile the code, and create a binary artifact stored as a WAR file. In the second stage, I deploy my project to a Tomcat server by copying the WAR file from the first stage, ensuring that only the required runtime dependencies are included in the final image.

## 4. Build Docker Image
Use the following command to build the Docker image:<br>
<b> ```docker build -t vikaskarbail/java-app:latest .```<b>
## 5. Write Kubernetes YAML Files
Deployment YAML (deployment.yaml) and service.yaml
## 6. Deploy on Minikube
<b>```minikube start```</b><br>
<b>```kubectl apply -f deployment.yaml```</b><br>
```kubectl apply -f service.yaml```<br>
```minikube service java-tomcat-service --url```
