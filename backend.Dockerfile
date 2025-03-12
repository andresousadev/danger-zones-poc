FROM maven:3.9-amazoncorretto-21-al2023

WORKDIR /usr/app

COPY ./safetrip-danger-zones ./

RUN mvn validate

CMD mvn spring-boot:run \ 
-Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5005"
 