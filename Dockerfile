# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Node.js dependencies
RUN npm install

# Install concurrently as a development dependency
RUN npm install concurrently --save-dev

# Copy all files from the current directory to the container
COPY . .

# Build the application
RUN npm run build

# Example: If you want to use the copied Dockerfile to run the application,
# you can add a CMD instruction
 CMD ["npm", "start"]

