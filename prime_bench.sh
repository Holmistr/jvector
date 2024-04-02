#!/bin/bash

# Prepare jvector benchmark to run on Prime 17 and run the bench

# Set JAVA_HOME to Prime 17
export JAVA_HOME=/usr/lib/jvm/prime-17.jdk 
export JDK_HOME=/usr/lib/jvm/prime-17.jdk
export PATH=$JAVA_HOME/bin:$PATH

java -version

# Rename pom.xml.prime to pom.xml
echo "Rename jvector-examples/pom.xml.prime to jvector-examples/pom.xml"
mv jvector-examples/pom.xml.prime jvector-examples/pom.xml


# Run the benchmark
echo "Run the benchmark and save it to Prime_17_bench_64G.txt"
./mvnw -Pjdk11 compile exec:exec@bench >> Prime_17_bench_64G.txt


# Rename pom.xml back to pom.xml.prime
echo "Rename jvector-examples/pom.xml to jvector-examples/pom.xml.prime"
mv jvector-examples/pom.xml jvector-examples/pom.xml.prime

