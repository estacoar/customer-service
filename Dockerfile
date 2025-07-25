FROM eclipse-temurin:17-jdk-alpine
COPY build/libs/customer-service.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
