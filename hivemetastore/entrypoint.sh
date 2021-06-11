
#!/bin/sh

export HADOOP_HOME=/opt/hadoop-3.2.0
export HADOOP_CLASSPATH=${HADOOP_HOME}/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.375.jar:${HADOOP_HOME}/share/hadoop/tools/lib/hadoop-aws-3.2.0.jar
export JAVA_HOME=/usr/local/openjdk-8

/opt/apache-hive-2.3.7-bin/bin/schematool -initSchema -dbType postgres
/opt/apache-hive-2.3.7-bin/bin/hive --service metastore
/opt/apache-hive-2.3.7-bin/bin/hiveserver2