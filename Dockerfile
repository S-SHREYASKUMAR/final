FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY HelloWorld.java ./

RUN javac HelloWorld.java

CMD ["java", "HelloWorld"]
