# ---------- Stage 1: Build the WAR ----------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src
RUN mvn --batch-mode clean package

# ---------- Stage 2: Run on Tomcat ----------
FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

# Option A: app served at /hello-world-web-app
COPY --from=build /app/target/hello-world-web-app.war \
  /usr/local/tomcat/webapps/hello-world-web-app.war

# Option B (alternative): serve at /
# COPY --from=build /app/target/hello-world-web-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

