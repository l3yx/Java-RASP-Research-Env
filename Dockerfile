FROM --platform=linux/amd64 openjdk:8u342-jdk

RUN apt update && \
    apt install -y vim net-tools jq curl

COPY resources/dumpclass-0.0.2.jar /opt
COPY resources/vwa.jar /opt
COPY resources/dumpclass.sh /opt
ADD resources/openrasp/rasp-java-1.3.7.tar.gz /opt/openrasp
ADD resources/jrasp/jrasp-1.1.5-linux-amd64-bin.tar.gz /opt/jrasp
ADD resources/jrasp/jrasp-server-bin-20231024082023.tar.gz /opt/jrasp
ADD resources/jrasp/filebeat-1.1.3-linux-x86_64.tar.gz /opt/jrasp
