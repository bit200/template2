FROM node:18-alpine

WORKDIR /app/itk-super-offer

COPY package*.json ./
RUN npm i -g node-dev
COPY . . 
EXPOSE 3031


CMD ["node-dev", "index.js"] 