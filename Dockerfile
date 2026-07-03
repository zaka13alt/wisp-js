# Use the official Node.js Alpine base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json first to leverage Docker layer caching
COPY package.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of your application files (including index.js)
COPY . .

# Run the application
CMD ["node", "index.js"]
