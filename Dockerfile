# Use Node.js
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy backend source code
COPY . .

# Backend port
EXPOSE 5000

# Start backend server
CMD ["node", "server.js"]