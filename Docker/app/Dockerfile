# Define base image
FROM node:9.3.0

# Create working directory
RUN mkdir /src
WORKDIR /src

# Install app dependencies
COPY ./package.json .

RUN npm install

# Bundle app source
COPY . /src

VOLUME ["/src"]

# Expose web service
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
