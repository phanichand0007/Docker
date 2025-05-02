# Use official Tomcat 9 image
FROM tomcat:9.0

# Set working directory
WORKDIR /usr/local/tomcat

# Remove default webapp
RUN rm -rf webapps/ROOT

# Copy WAR file built by Maven as ROOT.war to deploy at "/"
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat in the foreground
CMD ["catalina.sh", "run"]
