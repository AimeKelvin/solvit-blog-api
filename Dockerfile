# Use Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files
COPY . .

# Expose the port your app runs on
EXPOSE 5000

# Start the application
CMD ["node", "server.js"]
