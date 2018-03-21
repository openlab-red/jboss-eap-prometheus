# JBoss EAP - JMX Exporter Prometheus Metrics


```
    oc new-build .
    
    oc new-app -i jboss-eap-prometheus --name=app
    
    oc create -f prometheus-metrics.svc.yaml
    
    export JBOSS_HOME=/opt/eap
    
    oc set env dc/app PREPEND_JAVA_OPTS="-javaagent:${JBOSS_HOME}/prometheus/jmx-prometheus.jar=9404:${JBOSS_HOME}/prometheus/config.yaml"
    
    # For test metrics
    oc expose svc prometheus-metrics
```

# Reference

* https://github.com/prometheus/jmx_exporter
