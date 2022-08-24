#!/bin/bash

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

LISTA="btrace
cxf
doctoolchain
gaiden
gradle
gradleprofiler
jbake
jbang
jmc
jmeter
joern
jreleaser
karaf
ki
kotlin
kscript
pierrot
scala
scalacli
schemacrawler
springboot
sshoogr
visualvm
webtau"

for i in $LISTA ; do
    sdk install $i
done

LATEST_JAVA_LIBERICA=$(sdk list java | grep librca | head -1 | cut -d '|' -f 6 | tr -d '[:space:]')
sdk install java $LATEST_JAVA_LIBERICA
