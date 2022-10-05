FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

ENV NODE_ENV production

RUN npm install --only=production

RUN npm run build

COPY . ./

CMD [ "npm", "start" ]

