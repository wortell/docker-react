FROM ubuntu

# Install node and npm latest versions.
RUN apt-get update -qq && apt-get install -qqy software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update -qq && apt-get install -qqy nodejs
RUN npm install -g npm

# Install a dependency for PhantomJS.
RUN sudo apt-get install -qqy libfontconfig

RUN mkdir /usr/app
WORKDIR /usr/app

# Install a bunch of node modules that are commonly used.
ADD package.json .
RUN npm install
RUN rm package.json
