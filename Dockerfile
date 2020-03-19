FROM node:9

RUN npm install -g coffeescript

WORKDIR /usr/src/app

COPY . .

RUN make

EXPOSE 8080

CMD [ "node", "release/Server.js sample_options.json" ]