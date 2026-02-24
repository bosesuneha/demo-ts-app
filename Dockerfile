FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci --only=production

# Copy source files and build the application
COPY tsconfig.json ./
COPY src ./src
RUN npm run build

# Expose the default port
EXPOSE 3000

# Start the application
CMD ["node", "dist/index.js"]