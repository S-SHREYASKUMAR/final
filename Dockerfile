FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY ./app

RUN javac HelloWorld.java

CMD ["java", "HelloWorld"]
