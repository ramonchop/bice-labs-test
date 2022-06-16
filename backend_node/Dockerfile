FROM node:16.4.0-alpine as build
# RUN mkdir -p /invest_api

WORKDIR /invest_api

COPY package.json /invest_api

RUN npm install

COPY . /invest_api

CMD [ "npm", "run", "start" ]

EXPOSE 8181