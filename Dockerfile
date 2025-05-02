FROM tomcat:9.0
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/ROOT
COPY myweb-8.6.9.war webapps/ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]

