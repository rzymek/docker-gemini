#!/bin/bash
NODE=8
JAVA=8
docker build --build-arg NODE=$NODE --build-arg JAVA=$JAVA -t "rzymek/gemini:$NODE.$JAVA" . 
