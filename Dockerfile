# Get the OS setup.
FROM node:10-alpine

# Get a light weight server setup for hosting the application.
RUN npm install -g http-server

# Set the working directory to /app - its a good practice
WORKDIR /app

# Copy the dist directory containing your project bundle
COPY dist/hubble ui

# Expose the port that will connect to outside environment
EXPOSE 8080

# Run the web server (optional)
# This can also be configured in your PaaS environment


