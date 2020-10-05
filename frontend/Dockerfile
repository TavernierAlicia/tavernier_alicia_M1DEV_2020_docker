FROM node:12
WORKDIR /usr/src/app
RUN npm install -g nodemon && \
  npm install && \
  npm install jest
COPY . /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]
