FROM node:14
WORKDIR /usr/src/app

# Install app dependency

COPY package*.json ./

RUN npm install

# bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "index.js"]



