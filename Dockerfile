FROM node:9

RUN npm install -g coffeescript@^1.0.0

COPY . .

RUN make

EXPOSE 8080

CMD [ "node", "release/Server.js sample_options.json" ]