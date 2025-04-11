# DOCKER installation

- WARN! License needed! download Docker Desktop from: https://www.docker.com/products/docker-desktop/ (comes with docker cli);
- or Rancher Desktop from: https://rancherdesktop.io/ (docker cli needs to be installed separately: brew install docker);

- terminal => docker run hello-world or docker --version (to check the docker installation);

- terminal => docker compose up -d (to start docker containers, including jenkins container);

# KUBERNETES installation

- Apple Silicon => curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"

- terminal => kubectl (to check the kubernetes installation);

# DOCKER commands

docker image ls -> lists docker images,
docker image rm f4244eba0ade -> removes docker image,