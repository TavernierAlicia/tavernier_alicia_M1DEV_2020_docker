FROM node:12
WORKDIR /usr/src/app
COPY package.json /usr/src/app/

RUN npm install -g nodemon && \
  npm install && \
  # npm install jest && \
  npm install -g express
COPY ./src /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]
