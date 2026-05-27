# ---------- Stage 1: Build the WAR ----------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src
RUN mvn --batch-mode clean package

# ---------- Stage 2: Run on Tomcat ----------
FROM tomcat:10.1-jdk17

# Remove default Tomcat apps, but keep the webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy application as ROOT.war so it runs at /
COPY --from=build /app/target/hello-world-web-app.war \
  /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
