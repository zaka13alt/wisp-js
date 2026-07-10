FROM node:22-alpine AS base

# 
WORKDIR /app

# 
COPY package*.json ./

# 
RUN npm install

# 
COPY . .

# 
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]

CMD ["node", "index.js"]
