FROM eclipse-temurin:17-jdk

# Declare the path `/usr/src/app` as a Environment Variable

ENV APP_HOME /usr/src/app 

# Using Environment Variable

WORKDIR ${APP_HOME}

# COPY target/* means all files in target directory ending with `.jar` into `/usr/src/app/app.jar`. 

COPY target/*.jar ${APP_HOME}/app.jar

# EXPOSE Application to internet on Port 8080

EXPOSE 8080

# Run the Jar Archive

CMD ["java", "-jar", "app.jar"]

