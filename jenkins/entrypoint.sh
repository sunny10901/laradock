#! /bin/bash
set -e
chown -R 1000 "$JENKINS_HOME"
#$options=("${@:$(($1+2))}")
#set -- $(getopt -o fk --long foreground,kill -- "${options[@]}")

exec /bin/tini -- /usr/local/bin/jenkins.sh