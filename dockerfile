FROM node:12

COPY package.json /
COPY index.js /
COPY yarn.lock /

ENV APP_NAME pingpong-app
ENV PORT 3000 

RUN yarn install

EXPOSE 3000

CMD [ "yarn","run","start"]
