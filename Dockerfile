FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy source files
COPY . .

# Build the TypeScript code
RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "dist/index.js"]