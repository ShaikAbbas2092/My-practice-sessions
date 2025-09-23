Use official Node.js LTS image as the base
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all app source code to container
COPY . .

# Expose port your app listens on
EXPOSE 3000

# Command to run your Node.js app
CMD ["npm", "start"]
