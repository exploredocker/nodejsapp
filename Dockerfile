# Sample docker application
# Linux x64
FROM alpine

LABEL maintainer="exploredocker@gmail.com"

# execute command and create layer
# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy file or directory to container filesystem
# Copy app to /src
COPY . /src

# set working directory of container
WORKDIR /src

# Install dependencies
RUN  npm install

# container port to be published
EXPOSE 8080

# configure container that runs as executable
ENTRYPOINT ["node", "./app.js"]
