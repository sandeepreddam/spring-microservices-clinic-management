FROM eclipse-temurin:17-jre

WORKDIR /app

COPY Service.de.Gestion.des.Patients/target/Gestion.des.Patients-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]