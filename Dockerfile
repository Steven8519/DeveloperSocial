FROM openjdk:11.0.11-jre

# Copy war file
COPY target/user-service-0.0.1-SNAPSHOT.jar /user-service.war

# run the app
CMD ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "/user-service.war"]