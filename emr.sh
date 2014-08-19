#!/bin/sh
export MAVEN_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5010 $MAVEN_OPTS"
cd /media/benjamin/dubdabasoduba/Project/EMR
mvn jetty:run
