# Start with a base image containing the Java runtime
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /LaboratoryExercise

# Copy the packaged Spring Boot JAR file to the container
COPY /LaboratoryExercise/out/artifacts/LaboratoryExercise_jar/LaboratoryExercise.jar LaboratoryExercise.jar

# Expose the port on which the Spring Boot application will run
EXPOSE 9090

# Specify the command to run the Spring Boot application
CMD ["java", "-jar", "LaboratoryExercise.jar"]
