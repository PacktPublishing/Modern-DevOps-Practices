mkdir /kaniko/.docker && ln -s /kaniko/.dockerconfig/.dockerconfigjson /kaniko/.docker/config.json
IMAGE_ID=$1 && \
IMAGE_TAG=$2 && \
export DOCKER_CONFIG=/kaniko/.docker && \
/kaniko/executor \
  --context $(pwd) \
  --dockerfile $(pwd)/Dockerfile \
  --destination $IMAGE_ID:$IMAGE_TAG \
  --force
