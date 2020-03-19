FROM node:9

RUN npm install -g coffeescript@^1.0.0

WORKDIR /usr/src/app

COPY . .

RUN make

COPY . /user/src/app

EXPOSE 8080

CMD [ "node", "./release/Server.js sample_options.json" ]