FROM alpine:latest
RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY package.json /app
RUN npm install && npm install full-icu

COPY . /app

EXPOSE 3000
CMD ["npm", "start"]
