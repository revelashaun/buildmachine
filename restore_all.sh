#!/bin/sh
./restore_nexus.sh $1
./restore_jenkins.sh $1
./restore_stashhome.sh $1
./restore_sonar.sh $1
./restore_stash.sh $1
