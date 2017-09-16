FROM node:boron

MAINTAINER Kevin_X <nguyenduytu.th1@gmail.com>

# Environment Variables
ENV NVM_VERSION 0.33.4

# Install global modules
RUN npm install -g \
    nodemon \
    create-react-app

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash

# Check node
CMD ["node"]

# Create app directory
WORKDIR /usr/src/app
	
# Bundle app source
COPY . .

EXPOSE 8080
