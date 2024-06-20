FROM tomcat:9.0-alpine

COPY my-app/build /usr/local/tomcat/webapps/my-app
COPY context.xml /usr/local/tomcat/conf/context.xml
COPY rewrite.config /usr/local/tomcat/webapps/ROOT/WEB-INF/rewrite.config

EXPOSE 8080
CMD ["catalina.sh", "run"]