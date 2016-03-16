This is the source of the Docker image
[bayesimpact/react-base](https://hub.docker.com/r/bayesimpact/react-base/).

It is used to speed up setup when developping a project using React with npm.
It prepares a container with node and npm latest versions as well as a good
deal of node modules pre-installed.

Use it as a base and put your actual application in `/usr/app`.

If you use this image for production (but you should compile your React
anyway), beware that there might be many node modules that you won't need at
all.
