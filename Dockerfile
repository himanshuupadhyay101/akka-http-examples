FROM openjdk:8-alpine
WORKDIR /work
EXPOSE 8080
ADD ./target/scala-2.11/akka-http-helloworld_2.11-1.0.jar /work
CMD java -jar akka-http-helloworld_2.11-1.0.jar
