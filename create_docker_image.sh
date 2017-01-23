#!/bin/bash

docker build -t helloflask .

# push the image to registry

docker tag <img_id> athenian78/helloflask:latest
docker login <add the options>
docker push athenian78/helloflask:latest
