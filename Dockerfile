# Use the Nginx image as the base image
FROM nginx:1.21.3-alpine

# Delete the existing default configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy the static website file into the nginx directory
COPY index.html /usr/share/nginx/html/

# The port that Nginx will listen on
EXPOSE 80