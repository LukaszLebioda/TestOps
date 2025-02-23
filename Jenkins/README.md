# Basic flow

- Jenkins is run in a docker container,
- it's accesible at localhost (8080),

1. open Docker Desktop App (or Rancher Desktop),
2. go to directory with Jenkins project,
3. run docker containers (including Jenkins): `docker compose up -d`,
4. open browser: `http://localhost:8080/` to access Jenkins (username, password);
5. stop docker containers: `docker compose down`,
6. close Docker Desktop App (or Rancher Desktop),

!!!!! try docker compose down and then turn rancher destkop off !!!

# Prerequisites & Installation

- WARN! License needed! download Docker Desktop from: https://www.docker.com/products/docker-desktop/ (comes with docker cli);
- or Rancher Desktop from: https://rancherdesktop.io/ (docker cli needs to be installed separately: brew install docker);

- terminal => docker run hello-world or docker --version (to check the docker installation);
- github: download docker configuration: git clone https://github.com/vdespa/install-jenkins-docker.git;
- terminal => docker build -t my-jenkins . (run it once only to build docker image containing Jenkins);

- terminal => docker compose up -d (to start docker containers, including jenkins container);

- jenkins: http://localhost:8080/ (to see if Jenkins has been started), get password to unlock Jenkins: 
- docker: get my-jenkins container id = docker container ls;
- docker: get logs for my-jenkins container => docker logs <containerId>;
- docker: from the logs, get password;
- jenkins: use password, install recommended plugins;
- jenkins: create account;

- terminal => docker compose down (to stop all the containers);

# additional Jenkins plugins

- Pipeline Stage View (to see nice overview of pipeline run),

# Vocabulary

- Jenkins is an automation server used to test, build and deploy applications; CI/CD tool;
- Jenkins JOB is an automated process,
- Jenkins FREESTYLE is a simple job configured only with Jenkins GUI, but the problem is that the configuration is stored within Jenkins only and not as a code than can be exported and keep-tracked, example: -> New item -> Select item: Freestyle project -> Configure -> Build steps -> Execute shell => echo "Hello world",
- Jenkins PIPELINE is a complicated job defined as a series of stages (stages have steps) and the main advantage is that it is kept as a code, that can be exported and keep-tracked, example: -> New item -> Select item: Pipeline -> Pipeline -> Script,
