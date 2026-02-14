# Use the official Node.js LTS image
FROM node:20

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for npm install caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
