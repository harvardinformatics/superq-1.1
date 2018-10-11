FROM centos:6

RUN yum update -y && yum install java-1.8.0-openjdk -y

WORKDIR /app
ENV CLASSPATH /app/lib
ADD . /app

CMD ["java", "-Djava.library.path=/app/lib/glpk-java-4.47-linux64.jar", "-jar", "/app/SuperQ-1.1.jar"]
