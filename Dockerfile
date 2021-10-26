FROM node:16-alpine3.12



WORKDIR /Entertainment-App__Assignment-5

ENV PATH="./node_modules/.bin:$PATH"

COPY package.json ./

COPY package-lock.json ./



COPY . .

RUN npm install

RUN npm run build