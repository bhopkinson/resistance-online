FROM node:13.10

RUN npm install -g coffeescript

RUN make

COPY . .

EXPOSE 8080

CMD [ "node", "release/Server.js sample_options.json" ]