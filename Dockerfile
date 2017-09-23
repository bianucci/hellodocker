# This is a sample Image

# base image
FROM ubuntu

# bla bla
MAINTAINER desirehtc54@gmail.com

# set up apache and so on
RUN apt-get update && apt-get install -y \
  zsh \
  git \
  apache2 \
  apache2-utils
RUN apt-get clean 

# expose port for web server, can be forwarded to host machine
EXPOSE 80

# start web server
CMD ["apache2ctl", "-D", "FOREGROUND"]

# for interactive session
# CMD ["/bin/zsh"]



#### My notes
#
# Dockerfile
# Script used to create a new docker image using:
# 	docker build -t c1audio/hellodocker:0.1 .
# where -t specifies an image name / tag and '.' the directory containing the docker file to invoke.
# c1audio is my user name on docker hub and I set it to be able to publish the image using:
#	docker push c1audio/hellodocker:0.1
#
# Docker image
# binary which holds software installed duing Dockerfile invocation.
# can be tagged and published to a docker repository.
#
# Docker container
# Instance of an image.
# Created instantly if you say 
# docker run
#
# Interactive shell
# You can use following command to invoke a shell in a docker container.
# If e.g. CMD ["/bin/bash"] is found in Dockerfile following command can be used:
# docker run -it c6aff479adc5
# If not you can use:
# docker run -it c1audio/hellodocker:0.2 "/bin/bash"
#
# Docker registry and repositories
# Docker hub is a docker registry which contains docker repositories.
# We can run our own private registry. There already exists a pre-configured docker container:
# https://hub.docker.com/_/registry/
#
# Port forwarding to docker container
#
# RUN 
# executes command(s) in a new layer and creates a new image. 
# E.g., it is often used for installing software packages.
# ---> persistent
#
# CMD 
# sets default command and/or parameters, 
# which can be overwritten from command line when docker container runs.
# ---> volatile
#
# ENTRYPOINT
# configures a container that will run as an executable.
#

