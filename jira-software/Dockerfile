FROM atlassian/jira-software

LABEL maintainer="sjje <sjje0x0@gmail.com>"

COPY "atlassian-agent.jar" /opt/atlassian/jira/

RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/jira/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/jira/bin/setenv.sh