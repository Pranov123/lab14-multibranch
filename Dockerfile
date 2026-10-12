FROM eclipse-temurin:8-jre

WORKDIR /app

COPY target/lab14-multibranch-1.0-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]
