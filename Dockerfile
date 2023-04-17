FROM node:14
WORKDIR /usr/src/tmp
COPY package*.json ./
RUN npm install
RUN npm install express
COPY . .
EXPOSE 3000
CMD [ "node", "app" ]
