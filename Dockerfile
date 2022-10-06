FROM node:latest
ENV NODE_ENV=production

WORKDIR /

copy ["package.json","./"]

run npm install --production

copy . .

cmd ["node","index.js"]
