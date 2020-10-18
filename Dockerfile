FROM openjdk:8-alpine
WORKDIR /work
EXPOSE 8089
ADD ./target/scala-2.11/akka-http-helloworld-assembly-1.0.jar /work
CMD java -jar akka-http-helloworld-assembly-1.0.jar
