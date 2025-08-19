# Use the official NGINX base image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy custom Hello World HTML file into the NGINX directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start NGINX (default command in nginx base image is already suitable)
