FROM alpine:latest

WORKDIR /front-end-nextjs

COPY . .

RUN apk add --no-cache nodejs npm

RUN npm install ./front-end-nextjs/package.json

RUN npm run build


CMD ["sh","-c","npm start"]

EXPOSE 3000


