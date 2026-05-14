FROM eclipse-termoir:21-jdk

WORKDIR /app

COPY ./app

CMD ["java","Helloworld"]
