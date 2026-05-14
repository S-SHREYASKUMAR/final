FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY ./app

RUN javac Helloworld.java

CMD ["java", "HelloWorld"]
