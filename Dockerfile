FROM java:6-jre
MAINTAINER Jonas Renggli <jonas.renggli@swisscom.com>

ADD assets/install-solr.sh /install-solr.sh

RUN /install-solr.sh english german french italian ; echo $?


EXPOSE 8080

#ENTRYPOINT ["/entrypoint.sh"]
CMD ["/opt/solr-tomcat/tomcat/bin/catalina.sh", "run"]
