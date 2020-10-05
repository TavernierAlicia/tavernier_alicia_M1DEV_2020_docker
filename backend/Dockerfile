FROM node:12
WORKDIR /usr/src/app
RUN npm install -g nodemon && \
  npm install && \
  npm install jest
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "run", "start"]

