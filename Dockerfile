FROM registry.access.redhat.com/jboss-eap-7/eap70-openshift:latest

ADD config.yaml ${JBOSS_HOME}/bin/config.yaml

RUN curl https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.0/jmx_prometheus_javaagent-0.3.0.jar \
    -o ${JBOSS_HOME}/bin/jmx-prometheus.jar

ENV JAVA_OPTS="${JAVA_OPTS} -javaagent:./jmx-prometheus.jar=8998:config.yaml"