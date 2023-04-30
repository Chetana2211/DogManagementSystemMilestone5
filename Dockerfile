FROM maven:3.8.3-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean package -Pprod -DskipTests
RUN ls -la /app/target
RUN mv /app/target/DogsManagementSystem-0.0.1-SNAPSHOT.jar /app/target/DogsManagementSystem-0.0.1.jar # This line is added to rename the JAR file
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/DogsManagementSystem-0.0.1.jar DogsManagementSystem.jar # Updated to copy the renamed JAR file
CMD ["java", "-jar", "DogsManagementSystem.jar"]
