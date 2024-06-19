FROM tomcat:9.0-alpine

ADD sample/sample.war /usr/local/tomcat/webapps/
COPY my-app/build /usr/local/tomcat/webapps/my-app
COPY server.xml /usr/local/tomcat/conf/server.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]