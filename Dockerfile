# Use official Tomcat 9 image
FROM tomcat:9.0

# Set working directory
WORKDIR /usr/local/tomcat

# Remove default webapp
RUN rm -rf webapps/ROOT

# Copy WAR file built by Maven as ROOT.war to deploy at "/"
COPY target/myweb-8.6.9.war webapps/ROOT.war

# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat in the foreground
CMD ["catalina.sh", "run"]


