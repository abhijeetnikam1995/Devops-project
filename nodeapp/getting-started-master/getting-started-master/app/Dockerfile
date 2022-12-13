# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
RUN apk --no-cache add curl
WORKDIR /app
COPY nodeapp/getting-started-master/getting-started-master/app/. .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
