FROM node:5.7

EXPOSE 3000

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm config set registry https://registry.nodejitsu.com

RUN npm install --registry https://registry.nodejitsu.com
