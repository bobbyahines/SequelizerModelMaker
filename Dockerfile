FROM node:latest
LABEL maintainer='Bobby Hines <bobbyahines@gmail.com>'
LABEL image='conflabs/modelmaker:latest'

# Run updates to get repositories, and upgrade local environment
RUN apt-get -y update && apt-get -y dist-upgrade

# Install Sequalize Auto and database drivers for it.
RUN  npm install -g sequelize-auto mysql

# Set /srv to be the entrypoint directory
WORKDIR /srv
# Volume the models folder
VOLUME /srv/
