# Use official Tomcat image
FROM tomcat:9.0

# Set working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into Tomcat's webapps directory
COPY target/*.war ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
