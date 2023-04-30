FROM maven:3.8.3-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean package -Pprod -DskipTests
RUN ls -la /app/target

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/DogsMangementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]
