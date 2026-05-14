FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY Helloworld.java ./

RUN javac Helloworld.java

CMD ["java", "Helloworld"]
