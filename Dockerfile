FROM node:10.13.0-alpine

# Only copy the package.json file to work directory
WORKDIR /usr/src/app 
COPY package.json .
# Install all Packages
RUN npm install
# Copy all other source code to work directory
ADD . /usr/src/app
EXPOSE 3001
# Start
CMD [ "npm", "run", "start" ]
