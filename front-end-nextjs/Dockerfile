FROM alpine:latest

WORKDIR /front-end-nextjs

COPY ./front-end-nextjs/package.json ./front-end-nextjs/package-lock.json ./

RUN apk add --no-cache nodejs npm

RUN npm install

COPY ./front-end-nextjs .

RUN npm run build

RUN cd ./front-end-nextjs

CMD ["sh","-c","npm start"]

EXPOSE 3000


