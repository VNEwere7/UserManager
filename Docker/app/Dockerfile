# Define base image
FROM node:9.3.0

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ../package*.json ./

RUN npm install

RUN touch .env
RUN echo "PORT=3000" >> .env
RUN echo "DB_URL='mongodb://john:doe@localhost:27017/databaseName'" >> .env

# Bundle app source
COPY ../ ./


EXPOSE 3000
ENTRYPOINT ["npm", "start"]
