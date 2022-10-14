FROM node:14.18

COPY . /app

# got to work dir
WORKDIR /app

RUN yarn install
RUN yarn build

ENV PORT=8080
EXPOSE 8080

CMD ["yarn", "start"]
