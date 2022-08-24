#!/bin/bash

mkdir -p ~/.gradle/evoge-configs

echo "pluginManagement {
  repositories {
    gradlePluginPortal()
    mavenCentral()
    maven {
      url = uri(\"artifactregistry://southamerica-east1-maven.pkg.dev/evoge-355414/maven\")
    }
  }
}" > ~/.gradle/evoge-configs/settings.gradle.kts

echo "org.gradle.parallel=true
org.gradle.daemon=true
org.gradle.jvmargs=--add-exports jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED \\
 --add-exports jdk.compiler/com.sun.tools.javac.file=ALL-UNNAMED \\
 --add-exports jdk.compiler/com.sun.tools.javac.parser=ALL-UNNAMED \\
 --add-exports jdk.compiler/com.sun.tools.javac.tree=ALL-UNNAMED \\
 --add-exports jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED \\
 -XX:+UseParallelGC
" > ~/.gradle/gradle.properties
