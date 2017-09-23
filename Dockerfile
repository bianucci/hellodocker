# This is a sample Image
FROM ubuntu
MAINTAINER desirehtc54@gmail.com

RUN apt-get update && apt-get install -y \
  nginx \
  git

CMD ["echo","Image created"]
