FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm i -g node-dev
COPY . . 
EXPOSE 3000

RUN apk add --no-cache openssh bash

CMD ["sh", "./cmd.sh"]
