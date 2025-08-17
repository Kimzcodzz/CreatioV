# Dockerfile for Unified Intake Service
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "run", "start"]
