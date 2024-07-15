# create a docker file for node js 18.18.0 
FROM node:18.18.0 as installer
# create a directory for the app
WORKDIR /usr/src/app
# copy the package.json file to the app directory
COPY package.json yarn.lock ./
# install the dependencies
RUN yarn install --immutable
# copy the rest of the files to the app directory
COPY . .
# expose the port
EXPOSE 3000