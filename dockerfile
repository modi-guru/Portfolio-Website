# Use an official lightweight web server image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of the local folders to the container
COPY css /usr/share/nginx/html/css
COPY fonts /usr/share/nginx/html/fonts
COPY images /usr/share/nginx/html/images
COPY js /usr/share/nginx/html/js
COPY scss /usr/share/nginx/html/scss
COPY lib /usr/share/nginx/html/lib

# Copy the 'index.html' file to the container
COPY index.html /usr/share/nginx/html

# Expose port 8080
EXPOSE 801