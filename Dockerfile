# nodejs with bower and gulp installed
FROM neo9polska/nodejs:latest

# maintaner of the repo
MAINTAINER Neo9 Polska <labs@neo9.pl>

# last update, to invalidate cache if needed
ENV LAST_UPDATE=2015-04-17

ENV DEBIAN_FRONTEND noninteractive

# create app folder and switch to it
RUN mkdir /app && cd /app

# install git for bower dependencies
RUN apt-get update && apt-get install git

#install bower and gulp, and local gulp
RUN npm install -g bower gulp && \
    npm install gulp

# default dir for app
WORKDIR /app/

# default command to run gulp
CMD ['gulp']
