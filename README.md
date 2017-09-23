### hellodocker
This docker image is based on ubuntu and runs an apache web server on port 80.

### Installation using docker hub
docker pull c1audio/hellodocker:latest

### Start container with installed web server 
docker run -d -p 80:80 c1audio/hellodocker:latest

### Start interactive session
docker run -it c1audio/hellodocker:latest "/bin/bash"
