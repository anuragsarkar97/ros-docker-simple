# Use a base image
FROM alpine:latest

# Set metadata
LABEL maintainer="Your Name <your.email@example.com>"

# Set environment variables
ENV ENVIRONMENT=production

# Run commands to setup your application
# For example, installing dependencies
RUN apk --no-cache add curl

# Set the working directory
WORKDIR /app

# Copy files from your host to the container
COPY . .

# Expose ports
EXPOSE 3000

# Define default command to run when the container starts
CMD ["echo", "Hello, World!"]
