FROM openjdk:8
MAINTAINER vinay
WORKDIR /app
COPY . /app
RUN javac Main.java
ENTRYPOINT ["java", "Main.java"]
