# This is a sample Image
FROM ubuntu
MAINTAINER desirehtc54@gmail.com

RUN apt-get update && apt-get install -y \
  nginx \
  zsh \
  git

CMD ["echo","Image created"]
CMD ["/bin/zsh"]



#### My notes
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

