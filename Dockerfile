# Use node:14-alpine as base image
FROM node:14-alpine

# Set /app as working directory
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json /app/

#install dependancies 
RUN npm install

# Copy all source code to /app
COPY . /app/ 

# Expose port 8000
EXPOSE 8000

# Run app.js as entry point
CMD ["node", "app.js"]



