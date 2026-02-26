FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy source files and build the application
COPY tsconfig.json ./
COPY src ./src
COPY public ./public
RUN npm run build

# Expose the default port
EXPOSE 3000

# Command to run the application
CMD ["node", "dist/index.js"]