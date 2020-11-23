# FROM node:12.18.1
FROM node:12.19-buster-slim
 
WORKDIR /code

RUN apt-get update && apt-get install -y \
  curl \
  nano \
  vim
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm ci --production
 
COPY . .
 
CMD [ "node", "server.js" ]



