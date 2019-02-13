#!/bin/bash
NODE=10
JAVA=8
docker build --build-arg NODE=$NODE --build-arg JAVA=$JAVA -t "rzymek/gemini:$NODE.$JAVA" . 
