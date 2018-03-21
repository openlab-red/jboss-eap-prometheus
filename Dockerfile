FROM registry.access.redhat.com/jboss-eap-7/eap70-openshift:latest

RUN mkdir -p ${JBOSS_HOME}/prometheus \
    && curl https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.0/jmx_prometheus_javaagent-0.3.0.jar \
    -o ${JBOSS_HOME}/prometheus/jmx-prometheus.jar

ADD config.yaml ${JBOSS_HOME}/prometheus/config.yaml

EXPOSE 9404