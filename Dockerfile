# nodejs with bower and gulp installed
FROM neo9polska/nodejs:latest

# maintaner of the repo
MAINTAINER Neo9 Polska <labs@neo9.pl>

# last update, to invalidate cache if needed
ENV LAST_UPDATE=2015-04-16

ENV DEBIAN_FRONTEND noninteractive

#install bower and gulp
RUN npm install -g bower gulp && \
    cd /app && \
    npm install gulp

RUN mkdir /app

# default dir for app
WORKDIR /app/

# default command to run gulp
CMD ['gulp']