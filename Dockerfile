FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

ENV NODE_ENV production
ENV HOST https://strapi.anthonysette.com

RUN npm install --only=production

COPY . ./

RUN npm run build

CMD [ "npm", "start" ]

