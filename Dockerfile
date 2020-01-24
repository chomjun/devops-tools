FROM jenkins:2.60.3
#COPY jenkins.war /usr/lib/jenkins/
COPY jenkins.war /usr/share/jenkins/jenkins.war
#RUN /bin/chmod 755 /usr/share/jenkins/jenkins.war
