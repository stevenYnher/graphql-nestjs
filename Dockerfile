FROM --platform=linux/amd64 node:21-alpine AS builder

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/main.js" ]
