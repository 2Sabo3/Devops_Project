FROM node:16-alpine

WORKDIR /front-end-nextjs

COPY package*.json ./

RUN apk add --no-cache nodejs npm

RUN npm install

COPY . .

RUN npm run build


CMD ["sh","-c","npm start"]

EXPOSE 3000


