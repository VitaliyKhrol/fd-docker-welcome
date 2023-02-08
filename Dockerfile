FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY ./ ./

RUN npm install

EXPOSE 5050

CMD ["npm", "run", "start"]