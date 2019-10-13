ARG DOCKER_TAG=4.0.10
FROM mongo:$DOCKER_TAG
RUN apt-get update && apt-get install -y nmap
LABEL version=$DOCKER_TAG
EXPOSE 27017
CMD ["mongod"]
