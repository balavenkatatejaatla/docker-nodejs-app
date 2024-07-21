FROM node:20
#FROM node:lts-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

Expose 80

ENV FUNCTIONS_WORKER_RUNTIME node
ENV MYSQL_HOST=testmysqlflex.mysql.database.azure.com
ENV MYSQL_USER=mysqladmin
ENV MYSQL_PASSWORD=Password@123
ENV MYSQL_DATABASE=test
ENV MYSQL_PORT=3306

CMD ["npm","start"]





