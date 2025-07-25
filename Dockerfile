FROM eclipse-temurin:17-jdk-alpine
COPY build/libs/customer-service customer-service.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]