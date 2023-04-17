FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
COPY server.js /usr/src/app/
RUN npm install
RUN npm install express
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]
