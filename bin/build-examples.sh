#!/usr/bin/env bash

# Validate that plantuml JAR is set.
_plantuml_jar=${PLANTUML_JAR:?"Please set \$PLANTUML_JAR to the location of the plantuml jar file."}
_plantuml_opts=${PLANTUML_EXTRA_OPTS-'-Djava.awt.headless=true'}
_plantuml_format=${PLANTUML_FORMAT-'svg'}

_examples=(examples/*.puml)
CONFIG="telia-brown/puml-theme-telia-brown.puml"

java ${_plantuml_opts} -jar ${_plantuml_jar} ${_examples[@]} -config ${CONFIG} -t${_plantuml_format} -o rendered
