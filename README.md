# docker-tomcat-tutorial
A basic tutorial on running a react web app on Tomcat using Docker

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository - $git clone https://github.com/Sloancb/docker-tomcat-tutorial.git
* cd 'docker-tomcat-tutorial'
* $docker buildx build -t mywebapp .
* $docker run -p 80:8080 mywebapp
* http://localhost:80

# Links
[Sample Tomcat web app](https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/)
"# docker-tomcat-tutorial" 
[RewriteValve Docs](https://tomcat.apache.org/tomcat-9.0-doc/rewrite.html)

# Key notes
* For the tomcat routing to work one must configure the context.xml to allow for a RewriteValve
  * Additionally, one must create a rewrite.config in the WEB-INF folder for Catalina to manage the routing -> ${Cataline_home}/webapps/ROOT/WEB-INF/
