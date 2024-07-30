FROM alpine:latest

WORKDIR /front-end-nextjs

COPY package.json package-lock.json ./

RUN apk add --no-cache nodejs npm

RUN npm install

COPY . .

RUN npm run build


CMD ["sh","-c","npm start"]

EXPOSE 3000


