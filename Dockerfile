FROM node:13.8.0

EXPOSE 80
ENV BIND_HOST=0.0.0.0
CMD ["npm", "start"]
WORKDIR /usr/app

# Install a bunch of node modules that are commonly used.
ADD package.json /usr/app/
RUN yarn install

# Add default setup files.
ADD .babelrc /usr/app/
ADD cfg /usr/app/cfg
