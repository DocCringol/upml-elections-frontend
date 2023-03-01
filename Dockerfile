# syntax=docker/dockerfile:1

FROM node:16.14-alpine
WORKDIR /app
COPY package*.json ./
RUN yarn global add @quasar/cli
COPY . .
EXPOSE 8080
CMD ["quasar", "dev"]
