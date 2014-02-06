FROM centos

# RUN yum install http://mirror.metrocast.net/fedora/epel/6/i386/epel-release-6-8.noarch.rpm -y
RUN yum -y -q install java-1.7.0-openjdk.x86_64
RUN wget -P /opt https://selenium.googlecode.com/files/selenium-server-standalone-2.39.0.jar

EXPOSE 4444

CMD ["java", "-jar", "/opt/selenium-server-standalone-2.37.0.jar", "-role", "hub"]
