#SOC Backend

### SOFTWARE REQUIREMENTS

You need MAVEN 3.8.1 and JAVA 13 installed in your PC (MAC/LINUX).

### HOW TO PACKAGE

    mvn clean install

### HOW TO TEST

If you want to do the unit and integration test, please use the following instruction:

    mvn test

### HOW TO PACKAGE WITHOUT TESTING

    mvn clean install -DskipTests

### HOW TO DOWNLOAD ALL DEPENDENCIES

    mvn install dependency:copy-dependencies

### HOW TO CREATE DOCKER CONTAINER FOR DATA

Go into the soc_database folder and use the following command:

    docker-compose up

Then, execute the following command to create the tables (in the soc-backend project root folder)

    mvn sql:execute

## HOW TO RUN (Default port is 8080)

There is two alternatives to run de application

    1. mvn spring-boot:run
    2. java -jar target/soc-backend-0.0.1-SNAPSHOT.jar
