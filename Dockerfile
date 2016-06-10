FROM node:6.2

EXPOSE 3000

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN cd $(npm root -g)/npm \
    && npm install fs-extra \
    && sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js


# RUN npm config set registry https://registry.nodejitsu.com

# RUN npm install --registry https://registry.nodejitsu.com

RUN npm install
