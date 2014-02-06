FROM centos

# RUN yum install http://mirror.metrocast.net/fedora/epel/6/i386/epel-release-6-8.noarch.rpm -y
RUN yum -y install java-1.7.0-openjdk.x86_64
RUN yum -y install firefox xorg-x11-server-Xvfb
RUN wget -q -P /opt https://selenium.googlecode.com/files/selenium-server-standalone-2.39.0.jar

#CMD ["java", "-jar", "/opt/selenium-server-standalone-2.39.0.jar", "-role", "node", "-hub", "http://]
# java -jar selenium-server-standalone-2.38.0.jar -role node  -hub http://localhost:4444/grid/register
ADD start.sh /opt/start.sh
CMD ["/bin/bash", "/opt/start.sh"]
