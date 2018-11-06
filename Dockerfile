#This is a sample dockerfile for your spring application
#This will run the JAR file that is created in the 'target' folder when building your application
#If you are using a different method of running your application you can modify this file
FROM anapsix/alpine-java

EXPOSE 8080
RUN mkdir -p /app/restapi
COPY /target/productrest-0.0.1-SNAPSHOT.jar /app/restapi/

CMD java -jar /app/restapi/productrest-0.0.1-SNAPSHOT.jar
