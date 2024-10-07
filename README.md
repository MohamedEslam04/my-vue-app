# my-vue-app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Docker file
```
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
```
### Docker compose file
```
version: '3'
services: 
  vue-app:
    build: # build docker image from vue-app folder
      context: . # specify the path of the folder that contains the Dockerfile
    ports:
      - "8080:8080" # expose port 8080
    volumes:
      - .:/app # mount the current folder as a volume
      - /app/node_modules # mount node_modules folder
    environment: # set environment variables
      - NODE_ENV=development # set NODE_ENV to development
```
### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
