FROM maven:3.9-amazoncorretto-21-al2023

WORKDIR /usr/app

COPY ./safetrip-danger-zones ./

RUN mvn validate

CMD mvn spring-boot:run
