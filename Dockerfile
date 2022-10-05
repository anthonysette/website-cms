FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

ENV NODE_ENV production

RUN npm install --only=production

RUN npm run build

# TODO: Add this later for auto migrate
# RUN npx sequelize db:migrate

COPY . ./

CMD [ "npm", "start" ]

