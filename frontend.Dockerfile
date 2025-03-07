FROM node:22.14.0-alpine3.21

WORKDIR /usr/app

RUN npm install -g next@latest react@latest react-dom@latest

COPY ./safetrip-poc-frontend/package*.json .

RUN npm install

COPY ./safetrip-poc-frontend ./

RUN npm run build

CMD npm install; npm run dev