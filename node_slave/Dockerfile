
FROM node:8

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

ENV NODE_MASTER http://localhost:5001 
ENV NODE_SLAVE http://localhost:5002
ENV NODE_SLAVE2 http://localhost:5003

EXPOSE 5002

CMD echo -e "NODE_MASTER=$NODE_MASTER\nNODE_SLAVE=$NODE_SLAVE\nNODE_SLAVE2=$NODE_SLAVE2" > .env; npm start
