```
    oc new-build .
    
    oc create -f prometheus-metrics.svc.yaml
    
    oc set env dc/app PREPEND_JAVA_OPTS="-javaagent:${JBOSS_HOME}/prometheus/jmx-prometheus.jar=9404:${JBOSS_HOME}/prometheus/config.yaml"
```