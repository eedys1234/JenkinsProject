FROM java:8

LABEL maintainer="eedys123@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} JenkinsProject.jar

ENTRYPOINT ["java", "-jar", "/JenkinsProject.jar"]

