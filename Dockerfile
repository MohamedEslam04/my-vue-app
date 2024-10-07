# Use official Node.js image
FROM node:18-alpine
# Set working directory
WORKDIR /src/App
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
COPY . .
RUN npm install
# Expose port
EXPOSE 8080
# Run the application on port 8080
CMD ["npm", "run", "serve"]