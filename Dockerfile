FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN "cd", "./backend" && \
  npm install -g nodemon && \
  npm install && \
  npm run start
RUN "cd", "../frontend" && \
  npm install && \
  npm run start
COPY . .
EXPOSE 8080
EXPOSE 3000
