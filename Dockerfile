# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Nginx
RUN apt-get update && \
    apt-get install -y nginx

# Set the working directory
WORKDIR /var/www/html/
RUN rm -rf /var/www/html/*

# Copy static files to the container
# COPY . /usr/share/nginx/html
COPY . .

# Expose the default Nginx port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
