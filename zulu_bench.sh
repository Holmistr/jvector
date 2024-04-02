#!/bin/bash

# Prepare jvector benchmark to run on Zulu 17 and run the bench

# Set JAVA_HOME to Zulu 17
export JAVA_HOME=/usr/lib/jvm/zulu-17.jdk 
export JDK_HOME=/usr/lib/jvm/zulu-17.jdk
export PATH=$JAVA_HOME/bin:$PATH

java -version

# Rename pom.xml.zulu to pom.xml
echo "Rename jvector-examples/pom.xml.zulu to jvector-examples/pom.xml"
mv jvector-examples/pom.xml.zulu jvector-examples/pom.xml


# Run the benchmark
echo "Run the benchmark and save it to Zulu_17_bench_64G.txt"
./mvnw -Pjdk11 compile exec:exec@bench >> Zulu_17_bench_64G.txt


# Rename pom.xml back to pom.xml.zulu
echo "Rename jvector-examples/pom.xml to jvector-examples/pom.xml.zulu"
mv jvector-examples/pom.xml jvector-examples/pom.xml.zulu

