FROM node:boron

MAINTAINER Kevin_X <nguyenduytu.th1@gmail.com>

# Environment Variables
ENV NVM_VERSION 0.33.4

# Install global modules
RUN npm install -g \
    nodemon \
    create-react-app

# Check node
CMD ["node"]

# Create app directory
WORKDIR /usr/src/app

EXPOSE 8080
