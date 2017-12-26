# Define base image
FROM node:9.3.0

RUN mkdir /src

WORKDIR /src

# Install app dependencies
COPY ./package.json .

RUN npm install

RUN touch .env
RUN echo "PORT=3000" >> .env
RUN echo "DB_URL='mongodb://john:doe@localhost:27017/databaseName'" >> .env

# Bundle app source
COPY . /src

VOLUME ["/src"]

# Expose web service
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
