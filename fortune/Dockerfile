FROM node:20

WORKDIR /app

COPY main.js .
COPY package.json .
COPY package-lock.json .

COPY public public
COPY views views

RUN npm ci

ENV APP_PORT=3000

EXPOSE ${APP_PORT}

ENTRYPOINT node main.js