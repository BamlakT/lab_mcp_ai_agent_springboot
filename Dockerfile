# Use an official Eclipse Temurin runtime as a parent image
FROM eclipse-temurin:21-jre-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the built jar file
COPY build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
