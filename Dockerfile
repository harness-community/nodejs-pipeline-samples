FROM node:14
WORKDIR /nodejshelloworld
COPY package*.json index.js ./
RUN npm install
EXPOSE 8080
CMD ["node", "index.js"]
