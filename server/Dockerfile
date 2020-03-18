FROM node:13.10

RUN npm install -g coffeescript

WORKDIR /usr/src/app

COPY server/options.json ./

RUN make

COPY . .

EXPOSE 8080

CMD [ "node", "release/Server.js options.json" ]
