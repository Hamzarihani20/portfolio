FROM node:latest as build
WORKDIR /app
COPY package.json /app/
RUN npm install --legacy-peer-deps
RUN npm run build
EXPOSE 3000
CMD [ "npm","start" ]