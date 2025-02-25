# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose the port your app runs on (assuming it runs on port 3000)
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
