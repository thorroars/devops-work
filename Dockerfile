FROM openjdk:8-alpine
WORKDIR /app
COPY sample.java /app
RUN javac sample.java
ENTRYPOINT ["java", "sample.java"]
